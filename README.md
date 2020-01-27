![Painted Stones](https://github.com/yaniv256/VAEs-in-Economics/blob/master/Resources/PaintedStones.png?raw=true)

# VAEs-in-Economics

This project aims to explore applications of Variational Auto-Encoders (VAEs) in Economics. A VAE is a type of neural network that condenses data in a way that preserves as much detail as possible. We take some data and run it through the neural network, and what we ask the network to do for us is to give us back the same data that we put in. What’s the goal? Well, the network we use for this task is not plain vanilla. The way it’s special is that it has a bottleneck hiding in the middle. And bottleneck doesn’t mean bad. It’s a good thing. It’s what you want. The bottleneck forces the neural network to find a way to take all the complexity of the data and squeeze it into one or two numbers. The bottleneck is exactly where the magic happens. 

![Variational Auto-Encoder](https://github.com/yaniv256/VAEs-in-Economics/blob/master/Resources/VAE.png?raw=true)

Getting the neural network to find a way to squeeze all that data through the bottleneck is referred to as “training” the network. Once we complete training, we’re actually not going to be using the whole network. The useful part is the portion from the input to the bottleneck, and that’s it. We stop there. The first portion of the trained network is all we need in order to decomplexify. The second portion of the network would be useful if we wanted to complexify.

## The Simplicity/Accuracy Trade-Off 

Setting the bottleneck to one number is the highest level of decomplexification possible, taking the VAE to its fullest potential. Is there any reason you would ever want three or more numbers as your type? I’d say, if you don’t need humans to interact with this data, you can go for three to five-dimensional types. Humans like to look at visualizations, and the most effective visualizations are two-dimensional. If you go for three or more variables, humans will not be able to easily grok the encoded data. The most effective learning requires cooperation between human and machine. Going for three or more variables cuts the human out of the loop.

## American Time-Use Archetypes

In our first effort, we're focusing on a fascinating data set called the American Time Use Survey (ATUS), a government survey conducted by the US Bureau of Labor Statistics (BLS). The respondents are asked ahead of time to write down their activities during a given 24-hour period. BLS representatives classify the activities of the respondents into 389 different categories, minute-by-minute. Every year’s survey has approximately 11,500 records. The survey is conducted on a rolling basis, so it’s representative of both the population, the days of the week, and the seasons. 

## The Future of Customer Segmentation 

The question we’re going to ask about this incredibly intimate window into people’s lives is can we identify overarching types for describing the overwhelming diversity and baroque intricacy of how people choose to spend their day? As we explore how to decomplexify this richness, we will keep an eye on how the same process can be applied to customer segmentation. Marketing professionals think this kind of micro-segmentation will change the world. How? Because in the future we will be tailoring products to narrower and narrower groups of customers. Continuously finding needs that were not recognized until detected by real-time algorithms processing incoming data.

## Preliminary Results 

Here's a plot of the resulting encoding for the 2013 ATUS data:

![Variational Auto-Encoder](https://github.com/yaniv256/VAEs-in-Economics/blob/master/Resources/type_plot.png?raw=true)

Ranges identified:

| Range       | Variation    | Stable |
| ------------- |-------------| -----|
| -1.67 to -0.67  | childcare to social | non-shopping, work |
| -0.67 to -0.17  | work to health issue | non-shopping |
| -0.17 to 0.33 | health issue to housework | non-shopping, non-work |
| 0.33 to 0.83 | housework to shopping | non-work |
| 0.83 to 2.33 | non-work to work | shopping |
