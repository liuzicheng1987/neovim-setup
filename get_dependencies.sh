sudo apt-get update -y
sudo apt-get install -y gcc g++ make cmake git clang-format build-essential cmake 
sudo apt-get install -y python3-dev python3-pip 
sudo pip3 install pylint mypy black pynvim --break-system-packages
sudo apt install golang-go -y

wget https://go.dev/dl/go1.25.5.linux-arm64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.25.5.linux-arm64.tar.gz
export PATH=$PATH:/usr/local/go/bin

go install github.com/jesseduffield/lazygit@latest

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

