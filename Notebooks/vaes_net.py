import tensorflow.keras as keras
keras.__version__

from tensorflow.keras import layers
from tensorflow.keras import regularizers
from tensorflow.keras import backend as K
from tensorflow.keras.models import Model
from tensorflow import set_random_seed

from numpy.random import seed

import numpy as np
import pandas as pd

def make_vae( full_data,
    plot_types_args = {}, 
    img_shape = (389+1, ),
    latent_dim = 1, 
    dense_width = 1024,
    l2_penalty=0.0,
    l1_penalty=0.0,
    encoder_dropout_rate=0.5,
    decoder_dropout_rate=0.5,
    entanglement_penalty = 2,
    hidden_n = 2, 
    lr_factor = 0.9,
    lr_patience = 30):
  
  class PlotEpoch(keras.callbacks.Callback):

      def on_epoch_end(self, epoch, logs={}):
          
        if epoch % 100 == 0:
          plot_types(encoder = self.model.encoder, 
                    decoder = self.model.decoder, 
                    data = self.model.full_data, 
                    **plot_types_args)
          
  plot_epoch = PlotEpoch()

  callback_list = [
                  keras.callbacks.ReduceLROnPlateau(
                      monitor = 'val_loss',
                      factor = lr_factor,
                      patience = lr_patience,
                      verbose =1 #true
                  ),
                  plot_epoch
  ]

  input_img = keras.Input(shape=img_shape)

  # The last input indicate to the network whether this is validation
  is_validation = input_img[:,-1] 
  input_data = input_img[:,:-1]

  input_data = layers.GaussianNoise(0.03*(1-K.mean(is_validation)))(input_data)

  x = layers.Dense(dense_width, activation=layers.PReLU(alpha_regularizer=regularizers.l1_l2(
                      l1=l1_penalty,l2=l2_penalty)), \
                   kernel_regularizer=regularizers.l1_l2(
                      l1=l1_penalty,l2=l2_penalty))(input_data)



  x = layers.Dropout(encoder_dropout_rate)(x)

  for i in range(hidden_n):
    x = layers.Dense(dense_width, activation=layers.PReLU(alpha_regularizer=regularizers.l1_l2(
                      l1=l1_penalty,l2=l2_penalty)), 
                     kernel_regularizer=regularizers.l1_l2(
                        l1=l1_penalty,l2=l2_penalty))(x)
    x = layers.Dropout(encoder_dropout_rate)(x)

  z_mean = layers.Dense(latent_dim)(x)
  z_log_var = layers.Dense(latent_dim)(x)
  
  # Reduce sampling variance to near zero on validation (idea credit: Shahaf Grofit)
  is_validation_change = is_validation*100
  z_log_var = keras.layers.Subtract()([z_log_var, is_validation_change])
 
  def sampling(args):
      z_mean, z_log_var = args
      epsilon = K.random_normal(shape=(K.shape(z_mean)[0], latent_dim),
                                mean=0., stddev=1.)
      return z_mean + K.exp(z_log_var) * epsilon

  class CustomVariationalLayer(keras.layers.Layer):

    def vae_loss(self, x, z_decoded):
        is_validation = x[:,-1] 
        input_data = x[:,:-1] 
        x = K.flatten(input_data)
        z_decoded = K.flatten(z_decoded)
        xent_loss = keras.metrics.mse(x, z_decoded)

        kl_loss = -5e-4 * K.mean(
            1 + z_log_var - K.square(z_mean) 
            - entanglement_penalty*K.exp(z_log_var), axis=-1)
        
        # Penalize for variance, but only in training 
        return K.mean(xent_loss + (1-is_validation)*kl_loss)

    def call(self, inputs):
        x = inputs[0]
        z_decoded = inputs[1]
        loss = self.vae_loss(x, z_decoded)
        self.add_loss(loss, inputs=inputs)
        # We don't use this output.
        return x    

  z = layers.Lambda(sampling)([z_mean, z_log_var])

  encoder = Model(input_img,z_mean) # Maybe better if Model(input_data,z_mean)

  # This is the input where we will feed `z`.
  decoder_input = layers.Input(K.int_shape(z)[1:])
  print(decoder_input.shape)
  x = layers.Dense(dense_width, 
                   activation=layers.PReLU(alpha_regularizer=regularizers.l1_l2(
                      l1=l1_penalty,l2=l2_penalty)),
                   kernel_regularizer=regularizers.l1_l2(
                      l1=l1_penalty,l2=l2_penalty))(decoder_input)
  x = layers.Dropout(decoder_dropout_rate)(x)

  for i in range(hidden_n):
    x = layers.Dense(dense_width, 
                     activation=layers.PReLU(alpha_regularizer=regularizers.l1_l2(
                      l1=l1_penalty,l2=l2_penalty)),
                      kernel_regularizer=regularizers.l1_l2(
                        l1=l1_penalty,l2=l2_penalty))(x)
    x = layers.Dropout(decoder_dropout_rate)(x)


  x = layers.Dense(img_shape[0]-1, 
                    kernel_regularizer=regularizers.l1_l2(
                      l1=l1_penalty,l2=l2_penalty))(x)

  # This is our decoder model.
  decoder = Model(decoder_input, x)

  # We then apply it to `z` to recover the decoded `z`.
  z_decoded = decoder(z)

  # We call our custom layer on the input and the decoded output,
  # to obtain the score. Note that the objective is computed by 
  # this special final layer.
  y = CustomVariationalLayer()([input_img, z_decoded])

  vae = Model(input_img, y)

  vae.compile(optimizer='adam', loss=None) 
  vae.encoder = encoder
  vae.decoder = decoder
  vae.full_data = full_data
  vae.callback_list = callback_list

  return vae






import matplotlib.pyplot as plt
from scipy.stats import norm
from sklearn.preprocessing import StandardScaler
from sklearn.preprocessing import MinMaxScaler
import seaborn as sns

sns.set()
sns.set_style("darkgrid")






def plot_types(encoder, decoder, data, 
               n_type = 60, each_hight = 20, approx_width=400, 
               frac_width =0.55, 
               n_activity =  90, lowest_percentile= 1, 
               highest_percentile = 99, figsize=(10, 37),
               cmap='viridis', n_xlabels=13, spacing = -0.005, 
               hist_size=0.08, scaler=True):
  
  # definitions for the axes
  left, width = 0.05, frac_width
  bottom, height = 0.025, 0.65
  
  rect_scatter = [left, bottom, width, height]
  rect_histx = [left, bottom + height + spacing, width, hist_size]
  rect_colorbar = [left+width+0.1, bottom + height + spacing +0.01, width, 0.02]

  # start with a rectangular Figure
  plt.figure(figsize=figsize)

  ax_scatter = plt.axes(rect_scatter)
  ax_scatter.tick_params(direction='in', top=True, right=True)
  ax_histx = plt.axes(rect_histx)
  ax_histx.tick_params(direction='in', labelbottom=False)
  ax_colorbar = plt.axes(rect_colorbar)
  ax_colorbar.tick_params(direction='in', labelbottom=False, labelleft=False)

  each_width = np.int(np.ceil(approx_width/n_type))
  figure = np.zeros((each_hight*n_activity,n_type*each_width))
  # Linearly spaced coordinates on the unit square were transformed
  # through the inverse CDF (ppf) of the Gaussian
  # to produce values of the latent variables z,
  # since the prior of the latent space is Gaussian
  
  # We need to add a column of ones to indicate validation
  test_examples = data.shape[0]
  flag_1 = np.ones((test_examples,1),dtype=data.values.dtype)
  data_mat = np.concatenate((data.values,flag_1),axis=-1)
  encoded_data=encoder.predict(data_mat)


  lowest=np.percentile(encoded_data, lowest_percentile)
  highest=np.percentile(encoded_data, highest_percentile)

  grid_x = np.linspace(lowest, highest, n_type)

  for i, xi in enumerate(grid_x):
      z_sample = np.array([[xi]])
      x_decoded = decoder.predict(z_sample)
      figure[0:n_activity*each_hight,i*each_width : (i + 1)*each_width] = \
      np.repeat(x_decoded[0,0:n_activity],each_hight).reshape(n_activity*each_hight,1)

  if scaler:
    figure=np.transpose(figure)
    scaler = MinMaxScaler()
    figure=scaler.fit_transform(figure)
    figure=np.transpose(figure)

  im = ax_scatter.imshow(figure, cmap=cmap)
  plt.colorbar(im, ax= ax_colorbar, orientation='horizontal', fraction=1)

  # prec = pd.DataFrame(np.percentile(df,[50, 75, 95, 99],axis=0))

  # ax_scatter.text(1.02*n_type*each_width,
  #                 0.8*each_hight -each_hight, '50%  75%  95%  99%', fontsize=14)

  for i in range(n_activity):

    ax_scatter.text(1.02*n_type*each_width,
                    0.8*each_hight+i*each_hight, 
                    # '{:5.1f} {:5.1f} {:5.1f} {:5.1f}   '.format(prec.iloc[0,i]/60, 
                    #                                          prec.iloc[1,i]/60,
                    #                                          prec.iloc[2,i]/60,
                    #                                          prec.iloc[3,i]/60) + 
                    data.columns[i], fontsize=14)

  bins=np.append(grid_x-(grid_x[1]-grid_x[0])/2,
                 grid_x[n_type-1]+(grid_x[1]-grid_x[0])/2)

  
  ax_scatter.set_xticks( np.linspace(0,n_type*each_width,n_xlabels))
  ax_scatter.set_xticklabels(np.round(np.linspace(bins[0], bins[n_type], n_xlabels),
                                      decimals=2))  
  ax_scatter.set_yticks([])

  ax_histx.set_xticks( np.linspace(bins[0], bins[n_type], n_xlabels))
  
  sns.distplot(encoded_data,ax=ax_histx,bins=bins,kde=False,
               rug=False).set_xlim(bins[0],bins[n_type])

  #ax_histx.set_xticklabels(np.round(np.linspace(bins[0], bins[n_type], n_xlabels),
  #                                    decimals=2))


  plt.savefig('type_plot.png')

  plt.show()






def encode_plot2d(
    encoder, 
    decoder,
    data,
    x_col = 'Work__main_job',
    y_col = 'Physical_care_for_hh_children',
    lowest_percentile=1,
    highest_percentile = 99,
    n=70,
    step=10):

  test_examples = data.shape[0]
  flag_1 = np.ones((test_examples,1),dtype=data.values.dtype)
  data_mat = np.concatenate((data.values,flag_1),axis=-1)
  encoded_data=encoder.predict(data_mat)

  lowest=np.percentile(encoded_data, lowest_percentile)
  highest=np.percentile(encoded_data, highest_percentile)

  grid_x = np.linspace(lowest, highest, n)

  filtered=pd.DataFrame((decoder.predict(grid_x)))
  scaler = MinMaxScaler()
  filtered=pd.DataFrame(scaler.fit_transform(filtered))
  filtered.columns = data.columns
  
  sns.kdeplot(data[x_col], data[y_col], cmap="Blues", shade=True, bw=.2, 
              cut=0.1, legend=True)
  sns.lineplot(x = filtered[x_col], y=filtered[y_col], linewidth=1.5, 
                color= '#8E3179', sort=False)
  
  for i in range(0,n,step):
      plt.text(filtered[x_col][i]+0.01, filtered[y_col][i]+0.01, np.round(grid_x[i],1), 
              horizontalalignment='left', size='small', color='black')
  
  plt.savefig(x_col+'_'+y_col+'.png')
  plt.show()
