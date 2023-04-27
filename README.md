env
===

Handy configuration files and scripts managed via gnu stow and git submodules.

TODO: Refactor this package such that it mimics my home dir
TODO: Write a script to invoke stow

   stow . --target=dest

TODO: initialize submodules
.stow-local-ignore

Undo: add -D to command

https://systemcrafters.net/managing-your-dotfiles/using-gnu-stow/

stow . --target=~/projects/fake_home

```
git submodule init
git submodule update --remote --merge
git submodule add <repo> <path>
git submodule deinit <path>
git rm <path>


cd $ZPREZTODIR
git pull
git submodule sync --recursive
git submodule update --init --recursive
```

TODO
- Merge WenzlickHome
- Merge env/Work (submodule?)
- Get Adhoc under source
- tmux-MacOSX-pasteboard as a submodule?
- Add .ssh, .bash_profile, .hgignore_global
- Add .npmrc, .aws, .saml2aws, .tool-versions, .yarnrc
- Add .emacs, .doom
- Instructions from checkout to run of stow


https://brew.sh/
https://github.com/powerline/fonts
https://www.gnu.org/software/stow/
http://asdf-vm.com/



defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
 Command + Shift + G
 
 https://github.com/dbader/alfred-countdown-timer