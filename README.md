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

Exit the terminal and open a new one. Then, run:

```bash
nvm install node
```

Then, go to ~/go and open Neovim to install the Go packages.

Then, go to your home directory and open .bashrc to add the following lines:

```bash 
export PATH=$PATH:/usr/local/go/bin:~/go/bin
```

Then, open neovim and run `:Copilot setup` to complete the Copilot installation. Copy the generated token and paste it to https://github.com/login/device.

