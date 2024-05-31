if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'groenewege/vim-less', { 'for': 'less' }

if has("nvim")
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  "Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

  "lsp config"
  "Plug 'neovim/nvim-lspconfig'
  "Plug 'glepnir/lspsaga.nvim'
  "Plug 'folke/lsp-colors.nvim'
  "Plug 'onsails/lspkind-nvim'
  
  "autocomplete
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "Plug 'nvim-lua/completion-nvim'
  "Plug 'hrsh7th/nvim-cmp'
  "Plug 'hrsh7th/cmp-nvim-lsp'


  "vim and snippets
  "snippet engine
  Plug 'SirVer/ultisnips'
  "snippets code
  "wPlugin 'honza/vim-snippets'
  
  "nvim ui and theme
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'mhinz/vim-startify'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kien/ctrlp.vim'
  Plug 'akinsho/bufferline.nvim'
  Plug 'prettier/vim-prettier',  { 'do': 'yarn install --frozen-lockfile --production' }

  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'Exafunction/codeium.vim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'arcticicestudio/nord-vim'
  Plug 'shaunsingh/nord.nvim'
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
  Plug 'mattn/emmet-vim'

  "vim with f2e
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'mhartington/oceanic-next'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'mxw/vim-jsx'

  "golang 
  Plug 'fatih/vim-go'

  "other
  Plug 'junegunn/goyo.vim'
  "Plug 'alvarosevilla95/luatab.nvim'
  "Plug 'romgrk/barbar.nvim'
  "Plug 'github/copilot.vim'
  Plug 'metakirby5/codi.vim'
  "Plug 'lukas-reineke/indent-blankline.nvim'
endif


call plug#end()

