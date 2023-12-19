return {
  {
    "feline-nvim/feline.nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("eden.mod.ui.feline")
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufWinEnter",
    config = function()
      -- local hooks = require "ibl.hooks"
      -- hooks.register(
      --   hooks.builtin.hide_first_space_indent_level
      -- )
      require("ibl").setup({
        -- show_first_indent_level = false,
        -- show_trailing_blankline_indent = false,
        -- show_current_context = true,
        -- show_current_context_start = false, -- underline the start
      })
    end,
  },
}
