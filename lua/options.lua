local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.cursorline = true
opt.undofile = true
opt.termguicolors = true
opt["guicursor"] = "n-v-c:block-cursor"

vim.diagnostic.config({
  virtual_text = true,  -- show inline error messages
  signs = true,         -- show signs in the gutter
  underline = true,     -- underline problematic code
  update_in_insert = false,  -- do not update diagnostics while typing
  severity_sort = true, -- sort diagnostics by severity
})
