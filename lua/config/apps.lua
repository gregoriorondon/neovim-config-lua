-- Cargar Lazy.nvim y configurar plugins
require("lazy").setup({
  -- ==========================
  -- =========Temas============
  -- ==========================
  { "ayu-theme/ayu-vim", },
  { "folke/tokyonight.nvim", lazy = false, },
  { "ellisonleao/gruvbox.nvim", },
  { "rakr/vim-one", priority = 1000,
   config = function()
       vim.cmd("colorscheme one")
    end
    -- opts = {},
  },
  { "nvim-tree/nvim-web-devicons", opts = {} },
  {'jwalton512/vim-blade'},

  -- ==========================
  -- ======AUTOCOMPLETADO======
  -- ==========================
  {
    "neoclide/coc.nvim",
    branch = "master",
    build = "npm ci",
    config = function()
      vim.cmd([[
        inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>"
      ]])
    end
  },
  -- ==========================
  -- ======PROGRAMACIÓN========
  -- ==========================
  {
    'numToStr/Comment.nvim',
  },
  -- ========COLORES CSS=======
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = { -- set to setup table
    },
  },
  -- ==========================
  -- =======INTERFAZ UI========
  -- ==========================
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup()
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
	"xiyaowong/transparent.nvim",
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    lazy = false, -- neo-tree will lazily load itself
    ---@module "neo-tree"
    ---@type neotree.Config?
    opts = {
        -- fill any relevant options here
    },
  },    
  







})


