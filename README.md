# My dotfiles

I'm using [rcm](https://github.com/thoughtbot/rcm) to manage symlinks to my *.dotfiles* directory.

* `git clone git@github.com:davidthou/dotfiles.git ~/.dotfiles`
* `cp ~/.dotfiles/rcrc ~/.rcrc`
* Dryrun with `lsrc`
* Update symlinks with `rcup -v`
* Create Vim temp files directories:

```
mkdir -p ~/.vim/tmp/undo
mkdir -p ~/.vim/tmp/backup
mkdir -p ~/.vim/tmp/swap
```
