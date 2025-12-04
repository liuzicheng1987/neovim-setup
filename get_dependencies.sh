sudo apt-get update -y
sudo apt-get install -y gcc g++ make cmake git clang-format build-essential cmake 
sudo apt-get install -y python3-dev python3-pip 
sudo pip3 install pylint mypy black pynvim --break-system-packages

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

