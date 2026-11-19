require("config.lazy")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.wo.number = true
-- remove trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.cmd([[%s/\s\+$//e]])
  end,
})

-- Configure LSP clients

-- Set default root markers for all clients
vim.lsp.config('*', {
  root_markers = { '.git' },
})

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = false,
    severity_sort = true,
})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)      -- Go to definition
vim.keymap.set('n', 'gr', vim.lsp.buf.references)       -- Find references
vim.keymap.set('n', 'K', vim.lsp.buf.hover)             -- Show documentation
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)   -- Rename symbol
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action) -- Code actions
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)   -- Go to implementation
vim.keymap.set('n', '<leader>f', function()
  vim.lsp.buf.format({ async = true })
end)                                                     -- Format file

vim.lsp.enable('cpp_clangd')
vim.lsp.enable('go_gopls')
vim.lsp.enable('python_ruff')
vim.lsp.enable('python_pyrefly')
vim.lsp.enable('python_ty')
vim.lsp.enable('rust_rust_analyzer')

-- set autocomplete behavior.
--   fuzzy = fuzzy search in results
--   menuone = show menu, even if there is only 1 item
--   popup = show extra info in popup
--   noselect = don't insert the text until an item is selected
vim.cmd('set completeopt=fuzzy,menuone,popup,noselect')

-- set up stuff when the LSP client attaches
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('lsp', {}),
    callback = function(args)
        local clientID = args.data.client_id

        -- enable autocomplete
        vim.lsp.completion.enable(true, clientID, 0, { autotrigger = true })
    end,
})

-- Spell checking
vim.opt.spell = true
vim.opt.spelllang = { 'en_gb', 'de_de' }
