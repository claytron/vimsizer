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
" GetLatestVimScripts: ??? 1 vimsizer
" ============================================================================

" Section: TODO
"   - Auto completion of sizes
"   - Command to list sizes
"   - Publish on vim.org
"   - Update the GLVS ids

" SECTION: Script init
let s:vimsizer_version = '1.0'

if exists("loaded_vimsizer")
    finish
endif
let loaded_vimsizer = 1

" SECTION: default values
" A dictionary of available sizes
if !exists('g:vs_window_sizes')
    let g:vs_window_sizes = {"normal": '150 40', "bigger": '210 50'}
endif

" SECTION: commands
command! -n=1 VSWindowSize :call <SID>windowSize('<args>')
command! -n=1 VSSelectWindowSize :call <SID>selectWindowSize('<args>')

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
    if has_key(g:vs_window_sizes, a:size_name)
        call s:windowSize(g:vs_window_sizes[a:size_name])
        "echo "Window size set to ".g:vs_window_sizes[a:size_name]
    else
        "echo vs_window_sizes
    endif
endfunction
