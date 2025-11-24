return {
    "preservim/nerdtree",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("autocmd vimenter * NERDTree")
        vim.cmd("let NERDTreeShowHidden=1")
    end,
}

