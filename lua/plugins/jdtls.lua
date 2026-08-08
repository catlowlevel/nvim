---@type LazySpec
return {
  {
    "AstroNvim/astrolsp",
    dependencies = {
      { "mfussenegger/nvim-jdtls" },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = { "jdtls" },
    },
  },
}
