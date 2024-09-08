-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- keymaps.lua

-- Set options for key mappings
local opts = { noremap = true, silent = true }

-- Shortcut for setting keymaps
local keymap = vim.api.nvim_set_keymap

-- Allow telescope searching from terminal window
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "t",
      "<C-p>",
      "<C-\\><C-n><cmd>Telescope find_files<CR>",
      { noremap = true, silent = true }
    )
  end,
})

-- Modes
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c"

-- Normal Mode Keymaps
keymap("n", "<C-s>", ":w<CR>", opts) -- Save with Ctrl + S

-- override default keymaps
keymap("n", "s", "cl", opts)

-- Code Folding
keymap("n", "<leader>}", "zc", opts)
keymap("n", "<leader>{", "zo", opts)

-- Close buffer
keymap("n", "<C-w>", ":bd<cr>", opts)

keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)
