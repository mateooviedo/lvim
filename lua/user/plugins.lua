-- Additional plugins
lvim.plugins = {
  -- Start color schemes
  { "sainnhe/gruvbox-material" },
  { "glepnir/zephyr-nvim" },
  { "olivercederborg/poimandres.nvim" },
  { "olimorris/onedarkpro.nvim" },
  { "rmehri01/onenord.nvim" },
  { "kvrohit/substrata.nvim" },
  { "frenzyexists/aquarium-vim" },
  { "EdenEast/nightfox.nvim" },
  { "rafamadriz/neon" },
  { "catppuccin/nvim", as = "catppuccin",
    config = function()
      require("user.colorschemes.catppuccin").config()
    end
  },
  -- End color schemes
  { "shaunsingh/nord.nvim" },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("user.spectre").config()
    end,
  },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "nil" }
    end,
  },
  {
    "pwntester/octo.nvim",
    event = "BufRead",
    config = function()
      require("user.octo").config()
    end,
  },
  {
    "ThePrimeagen/harpoon",
  },
  -- NOTE: Whichkey breaks this unfortunately
  {
    "MattesGroeger/vim-bookmarks",
    config = function()
      -- highlight BookmarkSign ctermbg=NONE ctermfg=160
      -- highlight BookmarkLine ctermbg=194 ctermfg=NONE
      vim.g.bookmark_sign = ""
      vim.g.bookmark_annotation_sign = '☰'
      vim.g.bookmark_no_default_key_mappings = 1
      vim.g.bookmark_auto_save = 0
      vim.g.bookmark_auto_close = 0
      vim.g.bookmark_manage_per_buffer = 0
      vim.g.bookmark_save_per_working_dir = 0
      -- vim.g.bookmark_highlight_lines = 1
      vim.g.bookmark_show_warning = 0
      vim.g.bookmark_center = 1
      vim.g.bookmark_location_list = 0
      vim.g.bookmark_disable_ctrlp = 1
      vim.g.bookmark_display_annotation = 0
      -- vim.g.bookmark_auto_save_file = '~/.config/lvim/bookmarks'
    end
  },
  {
    'tom-anders/telescope-vim-bookmarks.nvim'
  }
}
