" Gif config
" nmap s <Plug>(easymotion-s2)
" nmap t <Plug>(easymotion-t2)

set nofoldenable    " disable folding

map <leader>tb :Tagbar<cr>

set splitbelow
set splitright

" Autoclose YCM doc previews
let g:ycm_autoclose_preview_window_after_completion = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="murmur"

" air-line
" let g:airline_powerline_fonts = 1

" highlights the background in red for text that goes over the 80 column limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
