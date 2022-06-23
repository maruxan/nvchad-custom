local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettierd,
  -- b.code_actions.eslint_d,
  -- b.diagnostics.eslint_d,

  -- Lua
  b.formatting.stylua,
  b.diagnostics.luacheck.with { extra_args = { "--global vim" } },


}

null_ls.setup {
  debug = true,
  sources = sources,
}
