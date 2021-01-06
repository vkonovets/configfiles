" Required for vundle:
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" List plugins here:
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'https://github.com/rhysd/vim-clang-format'
" Plugin 'https://github.com/vim-syntastic/syntastic'
Plugin 'pboettch/vim-cmake-syntax'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" End of vundle

let g:tex_flavor = 'latex'
au BufRead,BufNewFile *.tex setlocal textwidth=100
au BufRead,BufNewFile *.md setlocal textwidth=100

" Colorscheme setting
set background=dark
colorscheme gruvbox 
let g:gruvbox_contrast_dark = 'medium'


" remap keyboard shortcuts
map <PageUp> :bp<CR>
map <PageDown> :bn<CR>

syntax on
set number
set relativenumber
set backspace=2               " revert to normal backspace behaviour
set hidden                    " allows to jump buffers without saving
set path+=**                  " Add recursive and fuzzy file search to :find
set wildmenu                  " enable tab completion
let g:netrw_liststyle = 3     " tree view
set tabstop=2                 " show existing tab with 2 spaces width
set shiftwidth=2              " when indenting with '>', use 4 spaces width
set expandtab                 " On pressing tab, insert 4 spaces
let g:python_recommended_style = 0
au FileType python setlocal tabstop=4 shiftwidth=4 expandtab

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" cpp highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 0
let g:cpp_class_decl_highlight = 1

" syntax checking
 "set statusline+=%#warningmsg#
 "set statusline+=%{SyntasticStatuslineFlag()}
 "set statusline+=%*

 "let g:syntastic_always_populate_loc_list = 1
 "let g:syntastic_auto_loc_list = 1
 "let g:syntastic_check_on_open = 1
 "let g:syntastic_check_on_wq = 0
 "let g:syntastic_cpp_checkers = ['clang_tidy']

 " ClangFormat options
let g:clang_format#code_style= 'google'
let g:clang_format#style_options = {
  \ "ColumnLimit" : 99,
  \ "SpaceBeforeParens": "Never"}

