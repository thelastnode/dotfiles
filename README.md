# dotfiles

Managed with [chezmoi](https://chezmoi.io). Tools come from [mise](https://mise.jdx.dev), zsh plugins from [sheldon](https://sheldon.cli.rs), and the prompt from [starship](https://starship.rs).

## Install on a new machine

Prerequisites: `zsh`, `git`, `curl`. On macOS, run `xcode-select --install` for git.

```sh
# 1. Install mise to ~/.local/bin/mise
curl -fsSL https://mise.run | sh

# 2. Use mise to run chezmoi once, then clone this repo and apply it
~/.local/bin/mise exec chezmoi -- chezmoi init --apply thelastnode

# 3. Install everything in ~/.config/mise/config.toml (including chezmoi, sheldon, starship)
~/.local/bin/mise install

# 4. Start a new shell; sheldon clones the zsh plugins on first run
exec zsh
```

Until step 3 finishes, `.zshrc` skips mise, sheldon, and starship if they aren't installed, so you still get a plain shell.

## Conventions

- **Aliases** go in the `[plugins.aliases]` block in `dot_config/sheldon/plugins.toml`. Use mise's `[shell_alias]` only in a project's `mise.toml`, for aliases that belong to that directory.
- **Machine-specific config** isn't checked in:
  - `~/.config/mise/config.local.toml`: extra tools and settings
  - `~/.config/sheldon/local.zsh`: extra shell config
  - `~/.env`: extra environment variables, loaded by mise (values redacted in mise output). It's fine if it doesn't exist.

## Day to day

```sh
chezmoi edit ~/.zshrc   # open this repo's copy (dot_zshrc) in $EDITOR; editing ~/.zshrc directly gets overwritten on apply
chezmoi diff            # preview
chezmoi apply -v        # write to ~
chezmoi cd              # go to the source repo to commit and push
mise upgrade            # update tools
```
