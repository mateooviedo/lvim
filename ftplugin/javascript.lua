local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
    filetypes = { "javascript" },
    args = { "--single-quote", "--jsx-single-quote" },
  },
}
