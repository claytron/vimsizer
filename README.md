# Vimsizer #

Vimsizer is a simple plugin that was inspired by the
[Firesizer](https://addons.mozilla.org/en-US/firefox/addon/5792) extension
for Firefox. This plugin gives you the ability to define a re-usable set of
window dimensions.

There are two default sizes that are defined with the
`vs_window_sizes` variable:

    let vs_window_sizes = {"normal": "150 40", "bigger": "210 50"}

You can define your own set of sizes. Example:

    let vs_window_sizes = {"miniscule": "25 10", "magiscule": "200 60"}

Once the window sizes have been defined then you can use the
`VSSelectWindowSize` command to switch. Example:

    :VSSelectWindowSize bigger
    :VSSelectWindowSize normal

You can also quickly switch to any specific size you like with the
`VSWindowSize` command:

    :VSWindowSize 100 20

You can use the `autogroup` command to set the window size on startup.
Example:

    au VimEnter * exe 'VSSelectWindowSize normal'

This would set the window size to `normal` upon entering vim for the first
time.

You could also `map` a shortcut key to a window size. Example:

    map <leader>1 :VSSelectWindowSize normal<CR>
    map <leader>2 :VSSelectWindowSize bigger<CR>

The latest code is available on Github: http://github.com/claytron/vimsizer

To install this plugin simply copy the `vimsizer.vim` into the `plugin`
directory and `vimsizer.txt` into the doc directory in your vim folder.
