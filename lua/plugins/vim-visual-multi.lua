return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = "VeryLazy",
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",
        ["Find Subword Under"] = "<C-n>",
      }
      vim.g.VM_theme = "ocean"
      vim.g.VM_highlight_matches = "underline"
    end,
  },
}
