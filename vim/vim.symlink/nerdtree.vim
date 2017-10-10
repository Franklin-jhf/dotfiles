let g:NERDTreeWinSize = 38
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"let NERDTreeChDirMode = 2 " change vim working directory according to whatever the tree node is in NERDtree
let NERDTreeShowBookmarks = 0
let NERDTreeIgnore = ['node_modules', 'dist', 'es5']

let NERDTreeCascadeSingleChildDir=1

map <leader>nt :NERDTreeToggle<CR>
map <leader>g :NERDTreeFind<CR>

let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "M",
  \ "Staged"    : "M",
  \ "Untracked" : "N",
  \ "Renamed"   : "R",
  \ "Unmerged"  : "M",
  \ "Deleted"   : "D",
  \ "Dirty"     : "M",
  \ "Clean"     : "A",
  \ "Unknown"   : "?"
  \ }

" let g:nerdtree_tabs_autoclose = 1
" let g:nerdtree_tabs_open_on_console_startup = 1
" let g:nerdtree_tabs_smart_startup_focus = 1

" function! Setcd()
  " cd %:p:h
" endfunction
" command! Setcd call Setcd()

hi! link NERDTreeCWD GruvBoxAqua
hi! link NERDTreeOpenable GruvBoxBlue
hi! link NERDTreeClosable GruvBoxBlue
hi! link NERDTreeFlags GruvBoxPurple
hi! link NERDTreeDir GruvBoxBlue

hi! link NERDTreeGitStatusModified GruvBoxPurple
hi! link NERDTreeGitStatusStaged GruvBoxPurple
hi! link NERDTreeGitStatusRenamed GruvBoxPurple
hi! link NERDTreeGitStatusUnmerged GruvBoxPurple
hi! link NERDTreeGitStatusUntracked GruvBoxPurple
hi! link NERDTreeGitStatusDirDirty GruvBoxPurple
hi! link NERDTreeGitStatusDirClean GruvBoxPurple
hi! link NERDTreeGitStatusIgnored GruvBoxPurple
