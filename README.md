# Dotfizzles

**Dotfizzles in the hizzay dirz! Fo shizzle.**

## What’s this?

My personal dot file setup bash stuffs; use at your own risk. <img width="20" height="20" align="absmiddle" src="https://github.global.ssl.fastly.net/images/icons/emoji/no_mouth.png" alt=":no_mouth:" title=":no_mouth:" class="emoji">

## Installation

1. Back up your current dotfiles (optional):

 ```bash
 # Files must exist before running:
 # “.bash_functions”, “.bash_aliases”, “.bash_profile”, “.profile”, “.bashrc”, “.gemrc”, “.gitconfig” and “.gitignore”.
 # … if you’re not sure, then:
 $ cd; touch .{bash_functions,bash_aliases,bash_profile,profile,bashrc,gemrc,gitconfig,gitignore}
 # … Or, optionally, backup what exists:
 $ cd; mv ~/.bash_functions ~/.bash_functions_backup && mv ~/.bash_aliases ~/.bash_aliases_backup && mv ~/.bash_profile ~/.bash_profile_backup && mv ~/.profile ~/.profile_backup && mv ~/.gemrc ~/.gemrc_backup && mv ~/.bashrc ~/.bashrc_backup && mv ~/.gitconfig ~/.gitconfig_backup && mv ~/.gitignore ~/.gitignore_backup
 ```

1. Install Dotfizzles into your home directory:

 ```bash
 $ cd; curl -#L https://github.com/mhulse/dotfizzles/tarball/master | tar -xzv --strip-components 1 --exclude={.editorconfig,.gitattributes,dotfizzles.png,LICENSE,README.md}
 ```

1. Reload:

 ```bash
 $ source ~/.bash_profile && reload
 ```
 
1. This is optional, but I’d suggest restarting your computer (this will get `defaults write ...` working).

## Notes

1. Install Brew’s bash completion: `$ brew install bash-completion`.
1. The `.gitconfig` contains a name and e-mail that you’ll want to change.
1. I highly recommend the color scheme [Peppermint](http://noahfrederick.com/blog/2011/lion-terminal-theme-peppermint/); here's my terminal settings:

 ![general](https://cloud.githubusercontent.com/assets/218624/5911211/840e2252-a577-11e4-9e13-4301c30ca982.png)

 ![profiles](https://cloud.githubusercontent.com/assets/218624/3167953/9ca16924-eb77-11e3-9660-3eb980b669d6.png)

## [WIKI](https://github.com/mhulse/dotfizzles/wiki) pages

* [Bash shell tips and tricks](https://github.com/mhulse/dotfizzles/wiki/Bash-shell-tips-and-tricks)
* [Terminal tips and miscellany](https://github.com/mhulse/dotfizzles/wiki/Terminal-tips-and-miscellany)

## Links

* [gf3/dotfiles](https://github.com/gf3/dotfiles/tree/v1.0.0)
* [Bashstrap](https://github.com/barryclark/bashstrap)
* [jackbash](https://github.com/cep21/jackbash)
* [Quora: What are some useful .bash_profile and .bashrc tips?](https://www.quora.com/What-are-some-useful-bash_profile-and-bashrc-tips)
* [commandlinefu.com](http://www.commandlinefu.com/commands/browse)
* [My Mac OSX Bash Profile](http://natelandau.com/my-mac-osx-bash_profile/)
* [erwanjegouzo/dotfiles](https://github.com/erwanjegouzo/dotfiles)
* [Mac OS X Lion Terminal Theme: Peppermint](http://noahfrederick.com/blog/2011/lion-terminal-theme-peppermint/)
* [GitHub Cheat Sheet: Git Configurations](https://github.com/tiimgreen/github-cheat-sheet#git-configurations)

## License (MIT)

```
WWWWWW||WWWWWW
 W W W||W W W
      ||
    ( OO )__________
     /  |           \
    /o o|    MIT     \
    \___/||_||__||_|| *
         || ||  || ||
        _||_|| _||_||
       (__|__|(__|__|
```

Copyright © 2016 Michael Hulse

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
