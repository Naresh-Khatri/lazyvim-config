return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = "VeryLazy",
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-d>",
        ["Find Subword Under"] = "<C-d>",
      }
      vim.g.VM_theme = "ocean"
      vim.g.VM_highlight_matches = "underline"
    end,
  },
}
