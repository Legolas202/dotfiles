set number relativenumber
filetype plugin indent on
syntax on 
set mouse=a 
let g:airline_powerline_fonts = 1 
let g:airline_theme = 'wal'
colorscheme wal
set numberwidth=6
let g:colorizer_maxlines = 1000
set t_Co=256
vnoremap <C-y> :'<,'>w !xclip -selection clipboard<Cr><Cr>
nnoremap <F2> :! sh ~/dotfiles/scripts/snippet_help & <CR><CR> 
call plug#begin()

Plug 'SirVer/ultisnips '
	let g:UltiSnipsExpandTrigger = '<tab>'
	let g:UltiSnipsJumpForwardTrigger = '<tab>'
	let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
	let g:UltiSnipsSnippetDirectories=["UltiSnips", "mySnippets"]
call plug#end()


let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdgm'


function! StatuslineGit()
  let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
    endfunction

