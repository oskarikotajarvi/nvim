" ********************
" * Vim source files *
" ********************
" Plugins
source ~/.config/nvim/vim-plug/plugins.vim
" Mappings
source ~/.config/nvim/keys/mappings.vim
" General settings
source ~/.config/nvim/general/settings.vim
" Luatree
source ~/.config/nvim/luatree/luatree.vim
" Nerdcommenter
source ~/.config/nvim/nerdcommenter/nerdcommenter.vim
" Telescope
source ~/.config/nvim/telescope/telescope.vim
" Trouble
source ~/.config/nvim/trouble/trouble.vim
" Neoformat
source ~/.config/nvim/neoformat/neoformat.vim

" *******************
" * Lua source files *
" *******************
" For LSP and CMP correct setup see the lua files below. There are some
" instructions written inside the files
" LSP
luafile ~/.config/nvim/lsp/lsp.lua
" CMP configuration
luafile ~/.config/nvim/cmp/cmp.lua
" Treesitter
luafile ~/.config/nvim/treesitter/treesitter.lua
" Luatree
luafile ~/.config/nvim/luatree/luatree.lua
" FTerm
luafile ~/.config/nvim/FTerm/fterm.lua
" Telescope
luafile ~/.config/nvim/telescope/telescope.lua
" Lualine
luafile ~/.config/nvim/lualine/lualine.lua
" Trouble
luafile ~/.config/nvim/trouble/trouble.lua
" Transparent
" source ~/.config/nvim/transparent/transparent.lua
" *********
" * Other *
" *********
" Colorscheme
set background=dark
" colorscheme gruvbox
colorscheme catppuccin
" Highlight on yank
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END

" Don't automatically comment newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
