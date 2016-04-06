" Gif config
" nmap s <Plug>(easymotion-s2)
" nmap t <Plug>(easymotion-t2)

nnoremap <leader>tb :Tagbar<cr>

set splitbelow
set splitright

" Autoclose YCM doc previews
let g:ycm_autoclose_preview_window_after_completion = 1
 
let g:airline#extensions#tabline#enabled = 1

" use powerline patched fonts for airline
let g:airline_powerline_fonts = 1

" highlights the background in red for text that goes over the 80 column limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" disable folding
set nofoldenable

" set nerdtree to the left
let g:NERDTreeWinPos = "left"

" tell syntactic to populate loc list
let g:syntastic_always_populate_loc_list = 1

" set ]z and [z go to find open folds
function! GoToOpenFold(direction)
  if (a:direction == "next")
    normal zj
    let start = line('.')
    while foldclosed(start) != -1
      let start = start + 1
    endwhile
  else
    normal zk
    let start = line('.')
    while foldclosed(start) != -1
      let start = start - 1
    endwhile
  endif
  call cursor(start, 0)
endfunction

" map comments to cc
nnoremap <leader>cc :Commentary<cr>
