local helpers = require("null-ls.helpers")
local methods = require("null-ls.methods")
local present, null_ls = pcall(require, "null-ls")


if not present then
   return
end

local b = null_ls.builtins

local ruff_fix = helpers.make_builtin({
    name = "ruff",
    meta = {
        url = "https://github.com/charliermarsh/ruff/",
        description = "An extremely fast Python linter, written in Rust.",
    },
    method = methods.internal.FORMATTING,
    filetypes = { "python" },
    generator_opts = {
        command = "ruff",
        args = { "--fix", "-e", "-n", "--stdin-filename", "$FILENAME", "-" },
        to_stdin = true
    },
    factory = helpers.formatter_factory
})

local sources = {
   b.formatting.prettier,
   b.formatting.rubocop,
   b.formatting.black,
   ruff_fix,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
   b.diagnostics.rubocop,
   b.diagnostics.ruff,
}

null_ls.setup {
   sources = sources,
}
