# Setup a new MacOS machine

## Initial setup

```bash
chmod +x setup.sh
./setup.sh
```

### What is this script doing?

- Installing **Xcode Command Line Tools** `xcode-select --install`
- Installing **Homebrew** `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- Installing **Ansible** `brew install ansible`

## Tools installation

`ansible-playbook tools.yml` installs tools with Homebrew, Volta, Rust ...

## Manual Ansible installations

- **iTerm2** `ansible-playbook roles/iterm2/iterm2.yml` (+ README.md)
- **Nvim** `ansible-playbook roles/nvim/nvim.yml`
- **Tmux** `ansible-playbook roles/tmux/tmux.yml`
- **Yabai** `ansible-playbook roles/yabai/yabai.yml`
- **Skhd** `ansible-playbook roles/skhd/skhd.yml`

## Manual installations

- **Go** `https://go.dev/doc/install`
- **Air (Go)**: `go install github.com/air-verse/air@latest`

## Notes

`ansible-playbook -vvv {...}` (verbose mode)
