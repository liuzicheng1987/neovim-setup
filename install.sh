rm -rf ~/.config/nvim

mkdir -p ~/.config/nvim/lsp
mkdir -p ~/.config/nvim/lua/config
mkdir -p ~/.config/nvim/lua/plugins

cp ./init.lua ~/.config/nvim/init.lua
cp ./lsp/* ~/.config/nvim/lsp/
cp ./lua/config/* ~/.config/nvim/lua/config/
cp ./lua/plugins/* ~/.config/nvim/lua/plugins/
