return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()

    vim.g.nvim_tree_width_allow_resize = 1
    -- vim.g.nvim_tree_bindings = {
    --   { key = "l", cb = tree_cb("edit") },
    --   { key = "h", cb = tree_cb("close_node") },
    -- }

    -- local function on_attach(bufnr)
    --   local api = require "nvim-tree.api"
    --
    --   local function opts(desc)
    --     return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    --   end
    --
    --   -- default mappings
    --   api.config.mappings.default_on_attach(bufnr)
    --
    --   -- custom mappings
    --   vim.keymap.set('n', 'l', api.tree.open,        opts('Open'))
    --   vim.keymap.set('n', 'h', api.tree.close_node,  opts('Close Directory'))
    -- end

    require("nvim-tree").setup({
      on_attach = on_attach,
      update_focused_file = {
        enable = true,
      },
      renderer = {
        add_trailing = true,
        group_empty = true,
        highlight_git = true,
        icons = {
          glyphs = {
            default = "",
            symlink = "",
            git = {
              unstaged = "✚",
              staged = "✚",
              unmerged = "≠",
              renamed = "≫",
              untracked = "★",
            },
          },
        },
      },
      -- view = {
      --   mappings = {
      --     list = {
      --       { key = "l", cb = tree_cb("edit") },
      --       { key = "h", cb = tree_cb("close_node") },
      --     },
      --   },
      -- },
    })

    nmap("<leader>te", "<cmd>NvimTreeToggle<cr>")
  end,
}
