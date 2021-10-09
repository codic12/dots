set mouse=a

let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = v:false

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'ziglang/zig.vim'
Plug 'zah/nim.vim'
Plug 'navarasu/onedark.nvim'
Plug 'sainnhe/everforest'
Plug 'rktjmp/lush.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'tjdevries/express_line.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'mountain-theme/Mountain', {'rtp':'vim'}
call plug#end()

set guifont=JetBrains\ Mono\ Medium\ 13
set background=dark
let g:gruvbox_italics = 0
let g:everforest_background = 'hard'
let g:onedark_style = 'warmer'
let g:vscode_style = "dark"
source $VIMRUNTIME/mswin.vim
behave mswin
set number
set termguicolors

let g:transparency_config = {
      \  'active'   : 97,
      \  'inactive' : 90
      \ }


set tabstop=2 shiftwidth=2 expandtab

map <silent> <F11>
\    :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>

colorscheme coltrast

lua<<EOF
-- require('lualine').setup{options={theme='auto'}}


require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true
  },
}
require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.gopls.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.rust_analyzer.setup{on_attach=require'completion'.on_attach}
EOF
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%#RightStatusLine#
set statusline+=\ %y
set statusline+=\ %p%%
set statusline+=\ row
set statusline+=\ %l 
set statusline+=\ col
set statusline+=\ %c

" hi Normal guibg=NONE ctermbg=NONE
"
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

nnoremap <silent> ff    <cmd>lua vim.lsp.buf.formatting_sync()<CR>
autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()
