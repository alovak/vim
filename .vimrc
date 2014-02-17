set nocompatible

" Setup Vundle + plugins
source ~/.vim/.plugins

set encoding=utf-8
setglobal fileencoding=utf-8

" " Setup pathogen
" runtime bundle/vim-pathogen/autoload/pathogen.vim
" call pathogen#infect()

set visualbell

" put unnamed register * to clipboard
set clipboard=unnamed

" Enable search-related options
set hlsearch is scs

" read file if it was changed outside Vim
set autoread

" Use 2 spaces for indentation and replace tabs with spaces in a smart way
set sw=2 sts=2 et ai

" Show line number and cursor line
set relativenumber

if !has('gui_running')
  set t_Co=256
  colorscheme rdark-terminal

  " don't delay when you hit esc in terminal vim, this may make arrow keys not
  " work well when ssh'd in
  set ttimeoutlen=5

  " Changing cursor shape per mode
  " 1 or 0 -> blinking block
  " 2 -> solid block
  " 3 -> blinking underscore
  " 4 -> solid underscore
  if exists('$TMUX')
      " tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
      let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
      let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
      autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
  else
      let &t_SI .= "\<Esc>[4 q"
      let &t_EI .= "\<Esc>[2 q"
      autocmd VimLeave * silent !echo -ne "\033[0 q"
  endif
else
  " gui options
  set guioptions=
  set lines=50 columns=800
  " set guifont=Monaco:h14
  set guifont=Monaco\ for\ Powerline:h14
  set cursorline
  color rdark
endif



" highlight 80 column
set colorcolumn=80
set textwidth=81
set wrap
syntax on
set noswapfile

" allow to hide modified buffers when open new file in window
set hidden

" let last window to always have a status line
set laststatus=2

" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" use russian only in insert mode
" CTRL-^ to toggle between keymaps
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

setglobal tags+=~/tmp/.commontags

let mapleader = ","

filetype plugin indent on

"nerd commenter
let NERDSpaceDelims = 1

"ctrlp settings
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$|\.*\|tmp$\|solr$\|doc$'
let g:ctrlp_prompt_mappings = { 'AcceptSelection("h")': ['<c-o>'] }
let g:vimwiki_list = [{'path': '~/Documents/wiki'}]

au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile * set relativenumber
au BufRead,BufNewFile * set noballooneval

" create directory when saving new file
au BufNewFile * :exe ': !mkdir -p ' . escape(fnamemodify(bufname('%'),':p:h'),'#% \\')
au BufWinEnter * :hi LustySelected guifg=#fcaf3e ctermfg=208

" highlight whitespace
au BufWinEnter * :match WhiteSpace /\s$/

" hl rabl as ruby
au BufRead,BufNewFile *.rabl setf ruby
au BufRead,BufNewFile *.todo set filetype=todo

" turn off cursor keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" mappings

" Delete buffer
map ,db :bdelete!<CR>

"F2 - qwick save
nmap <F2> :w!<cr>
vmap <F2> <esc>:w!<cr>v
imap <F2> <esc>:w!<cr>a

" yank all buffer
map <leader>ya :%y *<cr>

" edit and apply .vimrc
nmap ,s :source ~/.vim/.vimrc
nmap ,v :e ~/.vim/.vimrc<cr>

map <leader>n :nohlsearch<cr>
map <Leader>co :copen<CR>
map <leader>gs :Gstatus<cr>
map <leader>f :LustyFilesystemExplorer<cr>
map <leader>r :LustyFilesystemExplorerFromHere<cr>
map <leader>b :LustyBufferExplorer<cr>
map <leader>g :LustyBufferGrep<cr>

function! GemHome()
  let result = system("gem environment | grep -m 1 -e '- /.*/gems/' | awk '{printf \"%s\", $2}'")
  return result
endfunction

function! CurrentPath()
  let result = system("pwd")
  return result
endfunction

map <leader>gg :execute "LustyFilesystemExplorer" . GemHome() . "/gems" <CR>
map <leader>gt :execute "!ctags -f ~/tmp/.commontags --languages=-javascript -R " . GemHome() . "/gems/ ".CurrentPath() <CR>

" tagbar
nmap <leader>t :TagbarToggle<CR>

vmap <F2> <esc>:w!<cr>v
imap <F2> <esc>:w!<cr>a

" use leader instead ctrl to work with windows
map <leader>w <C-W>
nmap <S-F2> <esc>:W<cr>

" stop auto indenting
set pastetoggle=<F3>

" Tabular patterns
" for Cucumber features
nmap <Leader>a  :Tabularize /^[ ]*[^ ]*\zs /r0c0l0<CR>
vmap <Leader>a  :Tabularize /^[ ]*[^ ]*\zs /r0c0l0<CR>
nmap <Leader>a= :Tabularize /=/l1c1l0<CR>
vmap <Leader>a= :Tabularize /=/l1c1l0<CR>
nmap <Leader>ah :Tabularize /=><CR>
vmap <Leader>ah :Tabularize /=><CR>

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set lazyredraw
" set lazyredraw
" set scrolloff=3 " show context above/below cursorline
set scrolloff=3 " show context above/below cursorline

vmap <Leader>c  <Plug>Commentary
nmap <Leader>c  <Plug>Commentary
nmap <Leader>cc <Plug>CommentaryLine
nmap <Leader>cu <Plug>CommentaryUndo
