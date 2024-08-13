These are my personal dotfiles that I have configured for my development environment. Dotfiles in this directory should be symlinked to home directory.

Symlink example

```
$ ln -s ~/code/dotfiles/gitconfig ~/.gitconfig
```

> Note: Not all files can be symlinked. For example, path to iTerm folder needs to be provided by opening settings of iTerm.

## Setting up terminal
- Install all required packages based on the dotfiles in this repo.
- Install NerdFont.
```
brew install --cask font-cascadia-mono-nf
```
- Update iTerm to use settings from this repo.
- Install LazyVim. Don't forget to run :LazyHealth for finding out which command line apps are still required.
