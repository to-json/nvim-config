plugins = {
  'folke/lazy.nvim',
  'neovim/nvim-lspconfig',
  'nvim-lua/plenary.nvim',
  'tpope/vim-surround',
  'rust-lang/rust.vim',
  'j-hui/fidget.nvim',
  'nvim-tree/nvim-web-devicons',
  'nvim-telescope/telescope-fzf-native.nvim' ,
  'nvim-telescope/telescope.nvim',
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  -- 'Olical/aniseed', -- return to this later
  {'Olical/conjure', ft = {"clojure", "janet", "fennel", "racket", "guile", }},
  'bakpakin/fennel.vim',
  'folke/trouble.nvim',
  'folke/which-key.nvim',
  'ggandor/lightspeed.nvim',
  'windwp/windline.nvim'
}

require("lazy").setup(plugins)

-- Plug 'Shougo/neocomplete.vim'
-- Plug 'Shougo/neomru.vim'
-- Plug 'Shougo/unite.vim'
-- Plug 'Shougo/vimproc.vim'
-- Plug 'Shougo/vimshell.vim'
-- Plug 'SirVer/ultisnips'
-- Plug 'altercation/vim-colors-solarized'
-- Plug 'bling/vim-airline'
-- Plug 'guns/vim-sexp'
-- Plug 'hashivim/vim-terraform'
-- Plug 'hashivim/vim-vagrant'
-- Plug 'honza/vim-snippets'
-- Plug 'hrsh7th/cmp-buffer'
-- Plug 'hrsh7th/cmp-cmdline'
-- Plug 'hrsh7th/cmp-nvim-lsp'
-- Plug 'hrsh7th/cmp-path'
-- Plug 'hrsh7th/nvim-cmp'
-- Plug 'jpalardy/vim-slime'
-- Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
-- Plug 'junegunn/fzf.vim'
-- Plug 'kana/vim-textobj-user'
-- Plug 'kien/rainbow_parentheses.vim'
-- Plug 'kovisoft/slimv'
-- Plug 'lifepillar/vim-mucomplete'
-- Plug 'luochen1990/rainbow'
-- Plug 'mfussenegger/nvim-dap'
-- Plug 'neovim/nvim-lspconfig'
-- Plug 'quangnguyen30192/cmp-nvim-ultisnips'
-- Plug 'rking/ag.vim'
-- Plug 'rust-lang/rust.vim'
-- Plug 'scrooloose/nerdcommenter'
-- Plug 'scrooloose/nerdtree'
-- Plug 'scrooloose/syntastic'
-- Plug 'simrat39/rust-tools.nvim'
-- Plug 'srcery-colors/srcery-vim'
-- Plug 'terryma/vim-expand-region'
-- Plug 'terryma/vim-multiple-cursors'
-- Plug 'tpope/vim-abolish'
-- Plug 'tpope/vim-endwise'
-- Plug 'tpope/vim-fireplace'
-- Plug 'tpope/vim-fugitive'
-- Plug 'tpope/vim-repeat'
-- Plug 'tpope/vim-sensible'
-- Plug 'tpope/vim-sexp-mappings-for-regular-people'
-- Plug 'tpope/vim-surround'
-- Plug 'tpope/vim-unimpaired'
