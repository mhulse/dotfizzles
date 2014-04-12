# Dotfizzles

![ls -ltr](dotfizzles.png)
**Dotfizzles in the hizzay dirz! Fo shizzle.**

---

## What’s this?

My personal dot file setup bash stuffs; use at your own risk. <img width="20" height="20" align="absmiddle" src="https://github.global.ssl.fastly.net/images/icons/emoji/no_mouth.png" alt=":no_mouth:" title=":no_mouth:" class="emoji">

## Big ups …

… goes out to [Barry Clark’s Bashstrap code](https://github.com/barryclark/bashstrap).

## Installation:

1. Back up your current dotfiles (optional):

 ```bash
 # Files must exist before running …
 $ mv ~/.bash_functions ~/.bash_functions_backup && mv ~/.bash_aliases ~/.bash_aliases_backup && mv ~/.bash_profile ~/.bash_profile_backup && mv ~/.bashrc ~/.bashrc_backup && mv ~/.gitconfig ~/.gitconfig_backup && mv ~/.gitignore ~/.gitignore_backup
 ```

1. Install Dotfizzles into your home directory:

 ```bash
 $ cd; curl -#L https://github.com/mhulse/dotfizzles/tarball/master | tar -xzv --strip-components 1 --exclude={ .editorconfig, .gitattributes, dotfizzles.png, LICENSE, README.md }
 ```

1. Reload:

 ```bash
 $ source ~/.bash_profile
 ```

## [WIKI](https://github.com/mhulse/dotfizzles/wiki) pages:

* [Bash shell tips and tricks](https://github.com/mhulse/dotfizzles/wiki/Bash-shell-tips-and-tricks)
* [Terminal tips and miscellany](https://github.com/mhulse/dotfizzles/wiki/Terminal-tips-and-miscellany)

## Links:

* [Bashstrap](https://github.com/barryclark/bashstrap)
* [jackbash](https://github.com/cep21/jackbash)
* [Quora: What are some useful .bash_profile and .bashrc tips?](https://www.quora.com/What-are-some-useful-bash_profile-and-bashrc-tips)
* [commandlinefu.com](http://www.commandlinefu.com/commands/browse)
* [My Mac OSX Bash Profile](http://natelandau.com/my-mac-osx-bash_profile/)
* [erwanjegouzo/dotfiles](https://github.com/erwanjegouzo/dotfiles)

---

#### LEGAL

Copyright © 2014 [Micky Hulse](http://mky.io)

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this work except in compliance with the License. You may obtain a copy of the License in the LICENSE file, or at:

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

<img width="20" height="20" align="absmiddle" src="https://github.global.ssl.fastly.net/images/icons/emoji/octocat.png" alt=":octocat:" title=":octocat:" class="emoji">
