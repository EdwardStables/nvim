
local lspconfig = require('lspconfig')
lspconfig.clangd.setup {
  settings = {
    ['clangd'] = {
        cmd = {"clangd", "--clang-tidy"},
        filetypes = {"h", "hpp", "c", "cpp", "cuh", "cu", "objc", "objcpp", "proto"},
        capabilites = capabilities,
        on_attach = {
            vim.keymap.set('n', 'gI', "<Cmd>ClangdSwitchSourceHeader<CR>", {silent = true})
        },
    },
  },
}
