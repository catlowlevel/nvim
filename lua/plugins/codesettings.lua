return {
  "mrjones2014/codesettings.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    config_file_paths = { "codesettings.json" },
  },
  config = function(_, opts)
    local codesettings = require "codesettings"
    codesettings.setup(opts)
  end,
}
