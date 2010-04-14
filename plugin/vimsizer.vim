" ============================================================================
" File:        vimsizer.vim
" Description: A vim global plugin that allows for quick window sizing
" Maintainer:  Clayton Parker <robots AT claytron DOT com>
" Last Change: 13 April, 2010
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================

" Section: TODO
"   - Auto completion of sizes
"   - Command to list sizes
"   - Write docs
"   - Push to github
"   - Publish on vim.org

" SECTION: Script init
let s:vimsizer_version = '1.0'

if exists("loaded_vimsizer")
    finish
endif
let loaded_vimsizer = 1

" SECTION: default values
" A dictionary of available sizes, inspired by Firesizer
let g:window_sizes = {"normal": '155 45', "bigger": '215 50'}

" SECTION: commands
command! -n=1 WindowSize :call s:windowSize('<args>')
command! -n=1 SelectWindowSize :call s:selectWindowSize('<args>')

" SECTION: re-sizing functions
" Set the window size to "columns lines"
function! s:windowSize(dimensions)
    let dimensions = split(a:dimensions)
    let new_columns = get(dimensions, 0, &columns)
    let new_lines = get(dimensions, 1, &lines)
    execute('set columns='.new_columns)
    execute('set lines='.new_lines)
endfunction

" Set the window size to the given size named in g:window_sizes
function! s:selectWindowSize(size_name)
    " TODO: throw an error if the size doesn't exist
    if has_key(g:window_sizes, a:size_name)
        call s:windowSize(g:window_sizes[a:size_name])
        "echo "Window size set to ".g:window_sizes[a:size_name]
    else
        "echo g:window_sizes
    endif
endfunction
