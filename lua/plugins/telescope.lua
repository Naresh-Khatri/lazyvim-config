return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    -- Extend the default options here
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
      mappings = {
        i = {
          -- Custom keybindings for insert mode
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
        },
      },
      -- Add any custom config like ignoring files
      file_ignore_patterns = { "node_modules", ".git/", ".next" },
    })

    -- Optionally extend pickers or themes if needed
    opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
      find_files = {
        -- Custom theme for find_files
        theme = "dropdown",
      },
    })

    -- Return the modified opts table
    return opts
  end,
}
