function! myspacevim#before() abort
	let g:vimfiler_direction = 'topleft'
  let g:spacevim_lint_on_save = 0
  let loaded_netrwPlugin = 1
	nnoremap <C-Bslash> :NERDTreeToggle<CR>
endfunction

function! myspacevim#after() abort
let loaded_netrwPlugin = 0
endfunction
