![Painted Stones](Resources/PaintedStones.png)

# VAEs-in-Economics
Sponsored by: [EasyAsPie.ai](http://easyaspie.ai/home)

This project aims to explore applications of Variational Auto-Encoders (VAEs) in Economics. A VAE is a type of neural network that condenses data in a way that preserves as much detail as possible. We take some data and run it through the neural network, and what we ask the network to do for us is to give us back the same data that we put in. The network we use for this task is not plain vanilla. The way it’s special is that it has a bottleneck hiding in the middle.

![Variational Auto-Encoder](Resources/VAE.png)

Once we complete training, we’re actually not going to be using the whole network. The useful part is the portion from the input to the bottleneck, and that’s it. The first portion of the trained network is all we need in order to decomplexify. The second portion of the network would be useful if we wanted to complexify.

Setting the bottleneck to just one number is the highest level of decomplexification possible. It takes the VAE to its fullest potential. That's what we're trying to do.

## American Time-Use Archetypes

In our first application, we're focusing on a data set called the American Time Use Survey (ATUS), a government survey conducted by the US Bureau of Labor Statistics (BLS). The respondents are asked ahead of time to write down their activities during a given 24-hour period. BLS representatives classify the activities of the respondents into 389 different categories, minute-by-minute. Every year’s survey has approximately 11,500 records. The survey is conducted on a rolling basis, so it’s representative of both the population, the days of the week, and the seasons. 

The question we’re going to ask about this incredibly intimate window into people’s lives is can we identify overarching types for describing the overwhelming diversity and baroque intricacy of how people choose to spend their day?

## Preliminary Results 

Here's a plot of the resulting encoding for the 2013 ATUS data:

![Variational Auto-Encoder](https://github.com/yaniv256/VAEs-in-Economics/blob/master/Resources/type_plot.png?raw=true)
