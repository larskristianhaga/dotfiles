# dotfiles

A collection of dot files

### Location

`.gitconfig` to be placed `~/.gitconfig`.

`.gitignore` to be placed in relevant repository root.

`.zshrc` to be placed `~/.zshrc`.

`jetbrains-settings.zip` to be consumed by a Jetbrains product.

### Create symlink
```bash
ln -s [FULL_PATH_TO_REPO]/.gitconfig ~/.gitconfig
```

```bash
ln -s [FULL_PATH_TO_REPO]/.zshrc ~/.zshrc
```

### Verify symlink
```bash
ls -l ~/.gitconfig
```

```bash
ls -l ~/.zshrc
```