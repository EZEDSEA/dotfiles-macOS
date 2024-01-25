return {
  -- Manage lazy itself. And use the dev version if it exists.
  { "folke/lazy.nvim", dev = true },

  -- measure startuptime
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
    config = function() vim.g.startuptime_tries = 10 end,
  },

  -- project specific session manager
  {
    "EricDriussi/remember-me.nvim",
    config = function()
      local path = require("eden.core.path")
      require("remember_me").setup({
        session_store = path.join(path.cachehome, "remember-me"),
      })
    end,
  },

  -- tmux navigator
  { 'alexghergh/nvim-tmux-navigation', config = function()
        require'nvim-tmux-navigation'.setup {
            disable_when_zoomed = true, -- defaults to false
            keybindings = {
                left = "<C-h>",
                down = "<C-j>",
                up = "<C-k>",
                right = "<C-l>",
                last_active = "<C-\\>",
            }
        }
    end
  }
}
