local brazil_config_plugin_path = '~/dotfiles/amazon/brazil-config'

return {
  { "teal-language/vim-teal" },
  { "NoahTheDuke/vim-just" },
  { "plasticboy/vim-markdown" },
  { "imsnif/kdl.vim" },

  {
    "Saecki/crates.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = { "toml" },
    config = function()
      require("crates").setup()
    end,
  },

  {
    "LhKipp/nvim-nu",
    event = "BufReadPost",
    build = ":TSInstall nu",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },

  -- Barium lsp for brazil config
  {
    dir = brazil_config_plugin_path
  },

  {
    "kristijanhusak/orgmode.nvim",
    ft = { "org" },
    config = function()
      require("orgmode").setup()
    end,
  },
}
