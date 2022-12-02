local trouble = require("trouble")

trouble.setup()

nmap("<leader>xx", [[<cmd>TroubleToggle<cr>]], { desc = "Toggle trouble" })
nmap("<leader>xw", [[<cmd>TroubleToggle workspace_diagnostics<cr>]], { desc = "Workspace diagnostics" })
nmap("<leader>xd", [[<cmd>TroubleToggle document_diagnostics<cr>]], { desc = "Document diagnostics" })
nmap("<leader>xl", [[<cmd>TroubleToggle quickfix<cr>]], { desc = "Local list" })
nmap("<leader>xq", [[<cmd>TroubleToggle loclist<cr>]], { desc = "Quickfix list" })
nmap("<leader>gR", [[<cmd>TroubleToggle lsp_references<cr>]], { desc = "Lsp references" })
