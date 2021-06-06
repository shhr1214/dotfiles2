call plug#begin("~/.config/nvim/plugged")
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'dracula/vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'joshdick/onedark.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'liuchengxu/vista.vim'
  Plug 'mattn/emmet-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'pangloss/vim-javascript'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'ulwlu/elly.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
  " Plug 'ionide/Ionide-vim', {'do':  'make fsautocomplete'}
  " Plug 'junegunn/fzf'
call plug#end()

let g:coc_global_extensions = [
      \'coc-clangd',
      \'coc-css',
      \'coc-deno',
      \'coc-diagnostic',
      \'coc-emmet',
      \'coc-eslint',
      \'coc-explorer',
      \'coc-fzf-preview',
      \'coc-git',
      \'coc-go',
      \'coc-html',
      \'coc-json',
      \'coc-lists',
      \'coc-omnisharp',
      \'coc-prettier',
      \'coc-pyright',
      \'coc-rust-analyzer',
      \'coc-sh',
      \'coc-snippets',
      \'coc-solargraph',
      \'coc-sql',
      \'coc-tsserver',
      \'coc-vimlsp',
      \'coc-yaml',
      \'coc-yank',
      \]

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
