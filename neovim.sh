# ALE, used for linting and fixing code
git clone https://github.com/dense-analysis/ale.git ~/.config/nvim/pack/dense-analysis/start/ale

# Copilot.vim, GitHub Copilot plugin for Neovim
# Activate copilot by entering :Copilot setup in vim and copying the token to the following link for the token: https://github.com/login/device
git clone --depth=1 https://github.com/github/copilot.vim.git ~/.config/nvim/pack/github/start/copilot.vim

# LazyGit.nvim, A simple Neovim wrapper around LazyGit
git clone https://github.com/kdheepak/lazygit.nvim.git ~/.config/nvim/pack/kdheepack/start/lazygit.nvim

# NERDTree, A tree explorer plugin for navigating the filesystem
git clone https://github.com/preservim/nerdtree.git ~/.config/nvim/pack/preservim/start/nerdtree

# vim-autoformat, A plugin to format code using external formatters
# Requires the appropriate formatter to be installed on your system
git clone https://github.com/vim-autoformat/vim-autoformat.git ~/.config/nvim/pack/vim-autoformat/start/vim-autoformat

# vim-code-dark, A dark color scheme for Vim/Neovim
git clone https://github.com/tomasiser/vim-code-dark.git ~/.config/nvim/pack/tomasiser/start/vim-code-dark

# vim-clang-format, A plugin to format C/C++ code using clang-format
# Requires clang-format to be installed on your system
git clone https://github.com/rhysd/vim-clang-format.git ~/.config/nvim/pack/rhysd/start/vim-clang-format

# vim-go, A Go development plugin for Vim/Neovim
# Activate vim-go by entering :GoInstallBinaries in vim and installing the necessary Go tools
git clone https://github.com/fatih/vim-go.git ~/.config/nvim/pack/fatih/start/vim-go

# Copy the init.vim configuration file to the Neovim config directory
cp ./init.vim ~/.config/nvim/init.vim
