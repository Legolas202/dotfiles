set number
filetype plugin indent on
syntax on 
set mouse=a 
let g:airline_powerline_fonts = 1 
let g:airline_theme = 'forest'
set numberwidth=6
nmap <F2>           <Plug>ToggleHexHighlight
nmap <leader><F2>   <Plug>ToggleSchemeHighlight
set t_Co=256
function! StatuslineGit()
  let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
    endfunction

