return {
  {
    "robitx/gp.nvim",
    config = function()
      local conf = {
        providers = {
          openai = {
            disable = true,
          },
          anthropic = {
            disable = false,
            endpoint = "https://api.anthropic.com/v1/messages",
            secret = os.getenv "ANTHROPIC_API_KEY",
          },
        },
        agents = {
          {
            provider = "anthropic",
            name = "ChatClaude-Haiku",
            chat = true,
            command = false,
            model = { model = "claude-3-haiku-20240307", temperature = 0.8, top_p = 1 },
            system_prompt = require("gp.defaults").chat_system_prompt,
          },
        },
      }
      require("gp").setup(conf)
    end,
  },
  -- {
  --   "frankroeder/parrot.nvim",
  --   dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },
  --   -- optionally include "rcarriga/nvim-notify" for beautiful notifications
  --   config = function()
  --     require("parrot").setup {
  --       -- Providers must be explicitly added to make them available.
  --       providers = {
  --         anthropic = {
  --           api_key = os.getenv "ANTHROPIC_API_KEY",
  --         },
  --         openai = {
  --           api_key = os.getenv "OPENAI_API_KEY",
  --         },
  --       },
  --     }
  --   end,
  -- },
}
