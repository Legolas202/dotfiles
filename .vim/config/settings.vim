set number
filetype plugin indent on
syntax on 
set mouse=a 
let g:airline_powerline_fonts = 1 
let g:airline_theme = 'forest'
set numberwidth=6

function! StatuslineGit()
  let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
    endfunction

