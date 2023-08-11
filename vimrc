set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'slim-template/vim-slim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'elixir-editors/vim-elixir'
Plugin 'dense-analysis/ale'
Plugin 'thoughtbot/vim-rspec'

call vundle#end()             " required
filetype plugin indent on     " required!

syntax on

set t_Co=256

" Solarized config
set background=dark
let g:solarized_termtrans=1
let g:solarized_contrast="medium"
let g:solarized_visibility="high"
colorscheme solarized

" Persistent undo and backups
if has('persistent_undo')
  set undodir=~/.vim/tmp/undo
  set undoreload=10000
  set undofile
endif

set backupdir=~/.vim/tmp/backup
set directory=~/.vim/tmp/swap
set backup

" Enable correct indentation
set sw=2 " no of spaces for indenting
set ts=2 " show \t as 2 spaces and treat 2 spaces as \t when deleting, etc..
set expandtab
set softtabstop=2

" Enable indention
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
endif

" Turn on line numbers
set number

" Search settings
set hlsearch
set incsearch

" Show trailing spaces
set list listchars=trail:.

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim·

" Nerdtree
map <C-e> :NERDTreeToggle<CR>

" airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_theme             = 'solarized'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_symbols.branch = '⎇'
set laststatus=2

" ale
let g:ale_virtualtext_cursor = 'current'
let g:ale_linters = {
      \  'javascript': ['eslint'],
      \  'ruby': ['ruby', 'rubocop'],
      \  'elixir': ['credo'],
      \}
let g:ale_ruby_rubocop_executable = './bin/rubocop'

" gitgutter
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=8

" minimap
let g:minimap_auto_start = 1

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!bin/rspec -f d {spec}"
