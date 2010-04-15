# Vimsizer #

Vimsizer is a simple plugin that was inspired by the [Firesizer]() extension for Firefox. This plugin gives you the ability to define a re-usable set of window dimensions. There are two default sizes that are defined:

    let g:window_sizes = {"normal": "XXX XX", "bigger": "XXX XX"}

These can be overriden or extended by using that same variable. You can extend the list by doing the following:

    call extend(g:window_sizes, {"gigantic": "XXX XX"})

But most likely, you will define your own sizes:

    let g:window_sizes = {"miniscule": "25 10", "magiscule": "200 60"}

Once the window sizes have been defined then you can use the `VSSelectWindowSize` command:

    :VSSelectWindowSize bigger
    :VSSelectWindowSize normal

You can also quickly switch to any specific size you like with the `VSWindowSize` command:

    :VSWindowSize 100 20
