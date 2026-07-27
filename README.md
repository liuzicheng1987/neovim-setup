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

Then, go to your home directory and open .bashrc to add the following line:

```bash
export PATH=$PATH:/usr/local/go/bin
```

You might have to install gopls separately. To do that, run the following command:

```bash
go install golang.org/x/tools/gopls@latest
```

## Lazygit Setup

To install lazygit, run the following commands:

```bash
go install github.com/jesseduffield/lazygit@latest
```

# Rust Setup

To install Rust, run the following command:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rust-analyzer
```

Then, go to your home directory and open .bashrc to add the following line:

```bash
export PATH="$HOME/.cargo/bin:$PATH"
```

# llama.cpp setup for llama.vim

```bash
llama-server --hf-repo ggml-org/Qwen2.5-Coder-14B-Instruct-Q8_0-GGUF --hf-file qwen2.5-coder-14b-instruct-q8_0.gguf -c 32768 --port 8012
```

# OpenCode Setup

```bash
sudo apt-get install npm
sudo npm install opencode-ai
```

cd to .config/opencode. It should contain opencode.json or opencode.jsonc. Insert the following (you can replace the model with something else):

```json
{
  "$schema": "https://opencode.ai/config.json",
  "permission": {
    "*": "ask",
    "read": "allow"
  },
  "provider": {
    "llama.cpp": {
      "npm": "@ai-sdk/openai-compatible",
      "name": "llama-server (local)",
      "options": {
        "baseURL": "http://127.0.0.1:8080/v1"
      },
      "models": {
        "qwen3.6-35b-a3b": {
          "name": "qwen3.6-35b-a3b (local)",
          "limit": {
            "context": 128000,
            "output": 65536
          }
        }
      }
    }
  }
}
```

