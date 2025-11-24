return {
    "fatih/vim-go",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("let $GOPATH = $PWD")
        vim.cmd("let $PATH .= ':~/go/bin'")
	vim.cmd(":GoInstallBinaries")
    end,
}
