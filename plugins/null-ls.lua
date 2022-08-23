local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {
   b.formatting.prettier,
   b.formatting.black,
   b.formatting.rubocop,
   b.formatting.isort,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
   b.diagnostics.rubocop
}

null_ls.setup {
   debug = true,
   sources = sources,
   -- on_attach = function(client)
   --    if client.resolved_capabilities.document_formatting then
   --      vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
   --    end
   --  end
}
