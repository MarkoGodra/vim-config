call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-repeat'
Plug 'plasticboy/vim-markdown'
Plug 'vim-scripts/c.vim'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'vim-scripts/bash-support.vim'
Plug 'shougo/vimshell.vim'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
Plug 'altercation/vim-colors-solarized'
Plug 'nickhutchinson/vim-cmake-syntax'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/OmniCppComplete'
call plug#end()
set number
set relativenumber
set mouse=a
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

syntax enable
set background=dark
colorscheme solarized

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq   = 0

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

nmap <F8> :TagbarToggle<CR>
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt setf cmake 
let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen = 'yes'

let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="-------------------------------"
let g:DoxygenToolkit_blockFooter="---------------------------------"
let g:DoxygenToolkit_authorName="Stefan Nicetin"

let g:vim_cmake_executable="cmake"
let g:vim_ccmake_executable="ccmake"
let g:vim_ctest_executable="cpack"
let g:vim_ctest_executable="ctest"
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set tabstop=3
set shiftwidth=3
set softtabstop=3 expandtab
set expandtab
