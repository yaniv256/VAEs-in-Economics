![Painted Stones](https://github.com/yaniv256/VAEs-in-Economics/blob/master/Resources/PaintedStones.png?raw=true)

# VAEs-in-Economics

This project aims to explore applications of Variational Auto-Encoders (VAEs) in Economics. A VAE is a type of neural network that condenses data in a way that preserves as much detail as possible. We take some data and run it through the neural network, and what we ask the network to do for us is to give us back the same data that we put in. What’s the goal? Well, the network we use for this task is not plain vanilla. The way it’s special is that it has a bottleneck hiding in the middle. And bottleneck doesn’t mean bad. It’s a good thing. It’s what you want. The bottleneck forces the neural network to find a way to take all the complexity of the data and squeeze it into one or two numbers. The bottleneck is exactly where the magic happens. 

![Variational Auto-Encoder](https://github.com/yaniv256/VAEs-in-Economics/blob/master/Resources/VAE.png?raw=true)

Getting the neural network to find a way to squeeze all that data through the bottleneck is referred to as “training” the network. Once we complete training, we’re actually not going to be using the whole network. The useful part is the portion from the input to the bottleneck, and that’s it. We stop there. The first portion of the trained network is all we need in order to decomplexify. The second portion of the network would be useful if we wanted to complexify.

The useful bit of the network is typically referred to as an “encoder.” We call it that because that representation “encodes” all the complexity of the data in a simpler form. And that's a beautiful thing. In the same way, we call the second portion a “decoder.” The decoder portion is not particularly useful for our application, but it’s still beautiful in a useless way.

In our first effort, we're focusing on a fascinating data set called the American Time Use Survey (ATUS), a government survey conducted by the US Bureau of Labor Statistics (BLS). The respondents are asked ahead of time to write down their activities during a given 24-hour period. BLS representatives classify the activities of the respondents into 389 different categories, minute-by-minute. Every year’s survey has approximately 11,500 records. The survey is conducted on a rolling basis, so it’s representative of both the population, the days of the week, and the seasons. 

The question we’re going to ask about this incredibly intimate window into people’s lives is can we identify overarching types for describing the overwhelming diversity and baroque intricacy of how people choose to spend their day?

Here's a plot of the resulting encoding for the 2013 ATUS data:

![Variational Auto-Encoder](https://github.com/yaniv256/VAEs-in-Economics/blob/master/Resources/type_plot.png?raw=true)
