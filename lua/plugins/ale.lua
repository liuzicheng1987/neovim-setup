return {
    "dense-analysis/ale",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("let g:ale_python_flake8_options = '--max-line-length=88'")
        vim.cmd("let g:go_fmt_command='goimports'")
    end,
}

