local M = {}

M.setup = function(config, on_attach, opts)
  config.on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    on_attach(client, bufnr)
  end

  if opts.cmd then
    config.cmd = opts.cmd
  end

  return config
end

return M
