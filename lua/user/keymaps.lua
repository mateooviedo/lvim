-- Buffers
lvim.keys.normal_mode["<Tab>"] = ":bn<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":bp<CR>"
lvim.keys.normal_mode["<Leader>o"] = ":tabe"

-- Select all
lvim.keys.normal_mode["<C-a>"] = "ggVG"

-- mappings
lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}

lvim.keys.normal_mode["ma"] = "<cmd>BookmarkAnnotate<cr>"
lvim.keys.normal_mode["mc"] = "<cmd>BookmarkClear<cr>"
lvim.keys.normal_mode["mm"] = "<cmd>BookmarkToggle<cr>"
lvim.keys.normal_mode["mh"] = "<cmd>lua require(\"harpoon.mark\").add_file()<cr>"
lvim.keys.normal_mode["mj"] = "<cmd>BookmarkNext<cr>"
lvim.keys.normal_mode["mk"] = "<cmd>BookmarkPrev<cr>"
lvim.keys.normal_mode["ms"] = "<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>"
lvim.keys.normal_mode["mx"] = "<cmd>BookmarkClearAll<cr>"
lvim.keys.normal_mode["mu"] = "<cmd>lua require(\"harpoon.ui\").toggle_quick_menu()<cr>"
