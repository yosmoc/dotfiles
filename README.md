# dotfiles

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Usage

### Install chezmoi

```bash
# Mac
brew install chezmoi
# Arch
yay -S chezmoi
```

### Initialize

```bash
# Initialize with this repository
chezmoi init yosmoc/dotfiles
```

### Apply
```bash
# Preview what changes will be made
chezmoi diff

# Apply the dotfiles
chezmoi apply
```

### Updating

```bash
# Pull and apply the latest changes
chezmoi update
```
