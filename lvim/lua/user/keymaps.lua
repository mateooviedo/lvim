-- Buffers
lvim.keys.normal_mode["<Tab>"] = ":bn<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":bp<CR>"

-- Select all
lvim.keys.normal_mode["<leader>a"] = "ggVG"

-- mappings
lvim.builtin.which_key.mappings["o"] = {
  name = "Others",
  m = {
    name = "Bookmarks",
    a = { "<cmd>BookmarkAnnotate<cr>", "Annotate" },
    c = { "<cmd>BookmarkClear<cr>", "Clear" },
    h = { '<cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon Mark" },
    u = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon Menu" },
    m = { "<cmd>BookmarkToggle<cr>", "Toggle" },
    j = { "<cmd>BookmarkNext<cr>", "Next" },
    k = { "<cmd>BookmarkPrev<cr>", "Prev" },
    s = { "<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>",
      "Show All" },
    x = { "<cmd>BookmarkClearAll<cr>", "Clear All" },
  },
  n = {
    name = "NeoTest",
    a = { '<cmd>lua require("neotest").run.attach()<cr>', "Attach nearest Test" },
    d = { '<cmd>lua require("neotest").run.run({strategy = "dap"})<cr>', "Debug nearest test" },
    f = { '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>', "Current File" },
    o = { '<cmd>lua require("neotest").output_panel.toggle()<cr>', 'Output panel' },
    s = { '<cmd>lua require("neotest").run.stop()<cr>', "Stop nearest Test" },
    t = { '<cmd>lua require("neotest").run.run()<cr>', "Nearest Test" },
  },
  r = {
    name = "Replace",
    r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
    w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
    f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
  },
  t = {
    name = "Terminal",
    n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
    u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
    t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
    p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
    f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
    h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
    v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
  },
}

-- Telescope
lvim.builtin.telescope.on_config_done = function()
  local actions = require "telescope.actions"
  lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
  lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
  lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
end
