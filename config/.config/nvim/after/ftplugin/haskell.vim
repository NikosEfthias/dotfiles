nnoremap <buffer><Leader>e :call <sid>GHCI()<cr>
nnoremap <buffer><Leader>c :exe "vsp \| term stack test" \| normal i<cr>
func! s:GHCI()
	vsp
	term stack ghci
	normal! i
endfunction
setlocal expandtab

let b:ale_linters = ["stack_build","stack_ghc","hie"]
