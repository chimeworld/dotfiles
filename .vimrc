" empty comment
" auto-install vim-plug and plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'zchee/deoplete-jedi'
  Plug 'Shougo/neoinclude.vim'
  Plug 'Shougo/deoplete-clangx'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'zchee/deoplete-jedi'
  Plug 'Shougo/neoinclude.vim'
  Plug 'Shougo/deoplete-clangx'

endif
let g:deoplete#enable_at_startup = 1


Plug 'rakr/vim-one'
Plug 'airblade/vim-gitgutter'
" git plugin
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentline'
Plug 'elzr/vim-json'
Plug 'hashivim/vim-terraform'
Plug 'rstacruz/vim-closer'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" ultisnip dependencies
Plug 'SirVer/ultisnips'

" color schemes
Plug 'phanviet/Sidonia'
Plug 'kaicataldo/material.vim'
Plug 'Siphalor/vim-atomified'
Plug 'vim-scripts/Fruidle'
Plug 'treycucco/vim-monotonic'
Plug 'fxn/vim-monochrome'
Plug 'fxn/vim-monochrome'
Plug 'Lokaltog/vim-monotone'
Plug 'vim-scripts/true-monochrome'
Plug 'rudrab/vim-coogle'
Plug 'vim-scripts/bw.vim'
Plug 'bruth/vim-newsprint-theme'
Plug 'KimNorgaard/vim-frign'
Plug 'DrXVII/vim_colors'
Plug 'neutaaaaan/monosvkem'
Plug 'logico-dev/typewriter'
Plug 'schickele/vim'
Plug 'JarrodCTaylor/spartan'
Plug 'sjl/badwolf'
Plug 'saalaa/ancient-colors.vim'
Plug 'zcodes/vim-colors-basic'
Plug 'xiaody/thornbird.vim'
Plug 'ronny/birds-of-paradise.vim'
Plug 'AlessandroYorba/Sierra'
Plug 'aereal/vim-colors-japanesque'
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'mbbill/vim-seattle'
Plug 'kamwitsta/nordisk'
Plug 'vim-scripts/ChocolateLiquor'
Plug 'vim-scripts/PapayaWhip'
Plug 'exitface/synthwave.vim'
Plug 'archSeer/colibri.vim'
Plug 'phanviet/Sidonia'
Plug 'KimNorgaard/vim-frign'
Plug 'szorfein/fromthehell.vim'
Plug 'marcelbeumer/spacedust.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'
Plug 'severij/vadelma'
Plug 'jeffkreeftmeijer/vim-dim'



call plug#end()

"set termguicolors
set number
set expandtab
set shiftwidth=4
colorscheme dim

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0

" Clang
" let g:deoplete#sources#clang#libclang_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
" let g:deoplete#sources#clang#clang_header='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang'

" deoplete settings
set completeopt-=preview
set completeopt+=noinsert

" Lightline config:
let g:lightline = {'colorscheme': 'default'}
set noshowmode

set colorcolumn=79

set clipboard=unnamed

" save last position in file
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Makefile
autocmd Filetype c setlocal makeprg=gcc-8\ \ %
autocmd Filetype cpp setlocal makeprg=g++-8\ \ %

" run Python file
autocmd FileType python nnoremap <buffer> <F5> :exec '!python3' shellescape(@%, 1)<cr>

" Terraform file tab size
autocmd FileType tf setlocal shiftwidth=2

" Move cursor with mousewheel
set mouse=a
map <ScrollWheelDown> j
map <ScrollWheelUp> k
