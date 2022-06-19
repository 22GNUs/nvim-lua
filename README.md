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

## Optional Dependencies

Install [TreeSetter Languages](https://github.com/nvim-treesitter/nvim-treesitter)

```vim
:TSInstall <language_to_install>
```

Install [Lazygit](https://github.com/jesseduffield/lazygit)

```sh
brew install lazygit
```

Install [rg](https://github.com/BurntSushi/ripgrep) (Support Telescope)

```sh
brew install ripgrep
``
