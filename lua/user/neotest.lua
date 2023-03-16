local status_ok, neotest = pcall(require, "neotest")
if not status_ok then
  return
end

local emisor_project = "/Users/moviedo/MELI/fraud-chargeback-admin-emisor/app"

neotest.setup_project(emisor_project, {
  adapters = {
    require('neotest-jest')({
      jestCommand = "jest --watch",
      jestConfigFile = "jest.config.js",
      cwd = function()
        return vim.fn.getcwd()
      end,
    }),
  },
  output = {
    enabled = false,
    open_on_run = false,
  },
  output_panel = {
    enabled = true,
  }
})
