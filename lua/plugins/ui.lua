return {
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    config = function() require("fidget").setup {} end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "aktersnurra/no-clown-fiesta.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- {
  --   "bluz71/vim-moonfly-colors",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    "Dr-42/error-jump.nvim",
    -- name = "error-jump",
    -- lazy = true,
    config = function()
      -- require("error-jump").setup()
      -- vim.keymap.set("n", "<leader>es", require("error-jump").jump_to_error, { desc = "[E]rror [S]ource" })
      -- vim.keymap.set("n", "<leader>en", require("error-jump").next_error, { desc = "[E]rror [N]ext" })
      -- vim.keymap.set("n", "<leader>eN", require("error-jump").next_error, { desc = "[E]rror [N]previous" })
      -- vim.keymap.set("n", "<leader>ec", require("error-jump").compile, { desc = "[E]rror [C]ompile" })
    end,

    dependencies = {
      "AstroNvim/astrocore",
      -- opts = {
      --   mappings = {
      --     n = {
      --       ["<Leader>Es"] = { require("error-jump").jump_to_error, desc = "[E]rror [S]ource" },
      --       ["<Leader>En"] = { require("error-jump").next_error, desc = "[E]rror [N]ext" },
      --       ["<Leader>EN"] = { require("error-jump").previous_error, desc = "[E]rror [N]previous" },
      --       ["<Leader>Ec"] = { require("error-jump").compile, desc = "[E]rror [C]ompile" },
      --     },
      --   },
      -- },
      opts = function(_, opts)
        local maps = opts.mappings
        maps.n["<Leader>Es"] = { require("error-jump").jump_to_error, desc = "[E]rror [S]ource" }
        maps.n["<Leader>En"] = { require("error-jump").next_error, desc = "[E]rror [N]ext" }
        maps.n["<Leader>EN"] = { require("error-jump").previous_error, desc = "[E]rror [N]previous" }
        maps.n["<Leader>Ec"] = { require("error-jump").compile, desc = "[E]rror [C]ompile" }
      end,
    },
  },
  -- {
  --   "sainnhe/gruvbox-material",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
}
