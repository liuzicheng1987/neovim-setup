sudo apt-get update -y
sudo apt-get install -y gcc g++ make cmake git clang-format clangd build-essential cmake
sudo apt-get install -y python3-dev python3-pip
sudo pip3 install pylint mypy ruff pynvim --break-system-packages

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

