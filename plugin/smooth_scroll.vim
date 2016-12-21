" Set the redraw variables to reasonable defaults
if !exists("g:scroll_lines_per_draw")
    if has("gui")
        let g:scroll_lines_per_draw=1
    else
        let g:scroll_lines_per_draw=3
    endif
endif

if !exists("g:scroll_frame_duration")
    if has("gui")
        let g:scroll_frame_duration=10
    else
        let g:scroll_frame_duration=50
    endif
endif

" Replace scroll keys
if get(g:, "scroll_disable_mapping", 0) != 1
    noremap <silent> <c-u> :call smooth_scroll#up(  &scroll)<CR>
    noremap <silent> <c-d> :call smooth_scroll#down(&scroll)<CR>
    noremap <silent> <c-b> :call smooth_scroll#up(  &scroll*2)<CR>
    noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2)<CR>
    noremap <silent> zz :call smooth_scroll#center()<CR>
    noremap <silent> zt :call smooth_scroll#top()<CR>
    noremap <silent> zb :call smooth_scroll#bottom()<CR>
endif