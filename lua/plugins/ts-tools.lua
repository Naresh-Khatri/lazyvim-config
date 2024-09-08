return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- Allow gd to go to definition
      keys[#keys + 1] = { "gd", ":TSToolsGoToSourceDefinition<CR>" }
    end,
  },
}
