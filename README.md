# Vimsizer #

Vimsizer is a simple plugin that was inspired by the [Firesizer]() extension
for Firefox. This plugin gives you the ability to define a re-usable set of
window dimensions. There are two default sizes that are defined with the
`vs_window_sizes` variable:

    let vs_window_sizes = {"normal": "150 40", "bigger": "210 50"}

You can define your own set of sizes. Example:

    let g:window_sizes = {"miniscule": "25 10", "magiscule": "200 60"}

Once the window sizes have been defined then you can use the
`VSSelectWindowSize` command to switch. Example:

    :VSSelectWindowSize bigger
    :VSSelectWindowSize normal

You can also quickly switch to any specific size you like with the
`VSWindowSize` command:

    :VSWindowSize 100 20
