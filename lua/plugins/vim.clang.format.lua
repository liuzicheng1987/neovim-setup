return {
    "rhysd/vim-clang-format",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd(":ClangFormatAutoEnable")
    end,

}
