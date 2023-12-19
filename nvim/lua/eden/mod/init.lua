return {
  -- Manage lazy itself. And use the dev version if it exists.
  { "folke/lazy.nvim", dev = true },

  -- These are some plugins that are misc
  {
    -- "tweekmonster/startuptime.vim",
    "dstein64/vim-startuptime",
    cmd = { "StartupTime" },
  },
  { "editorconfig/editorconfig-vim" },
  {
    "christoomey/vim-tmux-navigator",
    enabled = function()
      return vim.env.TMUX ~= nil
    end,
  },
  {
    "Lilja/zellij.nvim",
    enabled = function()
      return vim.env.ZELLIJ ~= nil
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
    ft = "qf",
  },
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({
        patterns = { ".git", ".hg", ".root" },
        datapath = require("eden.core.path").cachehome,
      })
    end,
  },
  -- amazon scat
  {
      "https://git.amazon.com/pkg/Scat-nvim",
      branch = "mainline",
      config = function()
          local map_key = vim.keymap.set
          local brazil = require("scat.brazil")
          local cr = require("scat.cr")
          local brazil_utils = require 'scat.brazil.utils'

          map_key("n", "<leader>al", brazil.list_all_packages)
          map_key("n", "<leader>ap", brazil.display_current_package_url)
          map_key("n", "<leader>aP", brazil.display_package_under_cursor_url)
          map_key("n", "<leader>aR", brazil.display_release_under_cursor_url)
          map_key("n", "<leader>af", brazil.display_current_file_url)
          map_key("n", "<leader>ai", brazil.install_current_jdt_package)
          map_key("n", "<leader>ar",
              function() cr.open_cr({ cr_template = vim.fn.expandcmd "$HOME/<path_to_your_cr_template>" }) end)
          map_key("n", "<leader>arp", function() cr.fetch_active_crs({ user = "<your_user_name>" }) end)
          map_key("n", "<leader>ac", brazil_utils.run_checkstyle)
          map_key('n', '<leader>ab', brazil.build_current_package)
          map_key('n', '<leader>av', brazil.display_current_version_set_url)
          map_key('n', '<leader>abr', brazil.build_current_package_recursively)
      end,
      requires = { "nvim-telescope/telescope.nvim" },
  },
  -- amazon code whisperer
  -- {
  --   "https://git.amazon.com/pkg/AmazonCodeWhispererVimPlugin",
  --   name = "codewhisperer",
  --   build = [[cat ~/.local/share/nvim/lazy/codewhisperer/service-2.json | jq '.metadata += {"serviceId":"codewhisperer"}' | tee /tmp/aws-coral-model.json && aws configure add-model --service-model file:///tmp/aws-coral-model.json --service-name codewhisperer]],
  --   dependencies = {
  --       { "nvim-telescope/telescope.nvim" },
  --   },
  -- }
}
