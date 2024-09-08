return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 30,
      open_mapping = [[<C-`>]], -- Use Ctrl + t to toggle
      -- hide_numbers = true, -- Hide line numbers in terminal
      -- shade_filetypes = {},
      -- shade_terminals = true,
      -- shading_factor = 2,
      -- start_in_insert = true, -- Start in insert mode
      -- insert_mappings = true, -- Apply keybinds in insert mode
      -- persist_size = true,
      -- direction = "float", -- Can be "horizontal", "vertical", "tab", or "float"
      -- close_on_exit = true, -- Close terminal when process exits
      -- shell = vim.o.shell,
      -- float_opts = {
      --   border = "curved", -- Border style
      --   winblend = 0,
      --   highlights = {
      --     border = "Normal",
      --     background = "Normal",
      --   },
      -- },

      -- Disable Vim motions in terminal mode
      on_open = function(term)
        -- vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-h>", "<Nop>", { noremap = true, silent = true })
        -- vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-j>", "<Nop>", { noremap = true, silent = true })
        -- vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-k>", "<Nop>", { noremap = true, silent = true })
        -- vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-l>", "<Nop>", { noremap = true, silent = true })
      end,
    })
  end,
}
