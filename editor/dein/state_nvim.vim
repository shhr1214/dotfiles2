if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/Souhei/.dotfiles/editor/nvim/init.vim', '/Users/Souhei/.dotfiles/editor/dein/plugins.toml', '/Users/Souhei/.dotfiles/editor/dein/lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/Souhei/.dotfiles/editor/dein'
let g:dein#_runtime_path = '/Users/Souhei/.dotfiles/editor/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/Souhei/.dotfiles/editor/dein/.cache/init.vim'
let &runtimepath = '/Users/Souhei/.config/nvim,/etc/xdg/nvim,/Users/Souhei/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/Souhei/.dotfiles/editor/dein/repos/github.com/Shougo/dein.vim,/Users/Souhei/.dotfiles/editor/dein/repos/github.com/autozimu/LanguageClient-neovim,/Users/Souhei/.dotfiles/editor/dein/repos/github.com/Shougo/neomru.vim,/Users/Souhei/.dotfiles/editor/dein/repos/github.com/Shougo/neoyank.vim,/Users/Souhei/.dotfiles/editor/dein/repos/github.com/fatih/vim-go,/Users/Souhei/.dotfiles/editor/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.2.2_1/share/nvim/runtime,/Users/Souhei/.dotfiles/editor/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/Souhei/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/Souhei/.config/nvim/after'
filetype off
    let g:lightline = {'colorscheme': 'wombat'}
autocmd dein-events TextYankPost * call dein#autoload#_on_event("TextYankPost", ['neoyank.vim'])
