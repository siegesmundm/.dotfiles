vim.lsp.config('clang', {
  cmd = {'clangd'},
  filetypes = {'c'},
  root_markers = {'.git', 'main.c'},
})

vim.lsp.enable('clang')
