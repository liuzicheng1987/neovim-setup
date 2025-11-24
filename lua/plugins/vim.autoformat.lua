return {
    "vim-autoformat/vim-autoformat",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("autocmd BufWritePre *.go Autoformat")
        vim.cmd("autocmd BufWritePre *.py Autoformat")
    end,
}

