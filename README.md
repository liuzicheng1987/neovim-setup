# neovim-setup

My personal neovim setup.

To get the dependencies, run the following commands:

```bash
cd neovim-setup
bash get_dependencies.sh
```

To compile Neovim from source, run the following commands:

```bash
cd neovim-setup
bash compile_nvim.sh
```

To install the packages, run the following commands:

```bash
cd neovim-setup
bash install.sh 
```

## Copilot Setup

Exit the terminal and open a new one. Then, run:

```bash
nvm install node
```

Then, open neovim and run `:Copilot setup` to complete the Copilot installation. Copy the generated token and paste it to https://github.com/login/device.

To install the copilot CLI, run the following commands:

```bash
npm install -g @githubnext/github-copilot-cli
```

## Go Setup

To install Go, run the following commands:

```bash
wget https://go.dev/dl/go1.25.5.linux-arm64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.25.5.linux-arm64.tar.gz
export PATH=$PATH:/usr/local/go/bin
```

OR

```bash
wget https://go.dev/dl/go1.25.5.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.25.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
```

Then, go to ~/go and open Neovim to install the Go packages.

Then, go to your home directory and open .bashrc to add the following lines:

```bash 
export PATH=$PATH:/usr/local/go/bin:~/go/bin
```

## Lazygit Setup

To install lazygit, run the following commands:

```bash
go install github.com/jesseduffield/lazygit@latest
```


