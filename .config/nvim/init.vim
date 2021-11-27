set mouse=a
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'RRethy/nvim-base16'
Plug 'alaviss/nim.nvim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'wsdjeg/vim-livescript'
Plug 'vim-crystal/vim-crystal'
Plug 'sainnhe/gruvbox-material'
Plug 'rakr/vim-one'
Plug 'mountain-theme/Mountain', {'rtp': 'vim'}
Plug 'NLKNguyen/papercolor-theme'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
set termguicolors
set background=light
colorscheme one
inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"

au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'nim',
    \ 'whitelist': ['nim'],
    \ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}
    \ })

set nofoldenable
source $VIMRUNTIME/mswin.vim
behave mswin
set number
setl shiftwidth=2 expandtab
set guifont=Hack:h7
