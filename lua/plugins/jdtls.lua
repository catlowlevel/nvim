---@type LazySpec
return {
  {
    "AstroNvim/astrolsp",
    dependencies = {
      { "mfussenegger/nvim-jdtls" },
    },
    opts = {
      config = {
        jdtls = {
          settings = {
            java = {
              autobuild = {
                enabled = false,
              },
            },
          },
        },
      },
      handlers = {
        jdtls = function(server)
          vim.lsp.config(server, {
            root_dir = function(bufnr, on_dir)
              local root = vim.fs.root(bufnr, { ".project", ".classpath" })
              if root then on_dir(root) end
            end,
            settings = {
              java = {
                autobuild = {
                  enabled = false,
                },
              },
            },
          })
          vim.lsp.enable(server)
        end,
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = { "jdtls" },
    },
  },
}
