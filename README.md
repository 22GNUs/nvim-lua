# Nvim dotfile Repo with new lua configuration

## Keymaps

👉🏻 `<C-,>` is the Leader key
| Key          | Description         |
| ------------ | ------------------- |
| `<C-n>`      | Toggle NVIM-tree    |
| `<C-\>`      | Toggle Terminal     |
| `<leader-f>` | Search by File name |
| `<leader-F>` | Search by Keyword   |
| `<leader>`   | Trigger Which key   |

## Commands

| Command                            | Description                  |
| ---------------------------------- | ---------------------------- |
| :PackerSync                        | Sync packer plugins          |
| :WakaTimeApiKey                    | Set wakaTime api key         |
| :TSInstall `<language_to_install>` | Install TreeSetter languages |

## Optional Dependencies

Install [Lazygit](https://github.com/jesseduffield/lazygit)

```sh
brew install lazygit
```

Install [rg](https://github.com/BurntSushi/ripgrep) (Support Telescope)

```sh
brew install ripgrep
``
