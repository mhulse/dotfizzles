# Dotfizzles

![ls -ltr](dotfizzles.png)
**Fo shizzle … Dotfizzles in the hizzay dirz!**

---

Big ups goes out to [Barry Clark’s Bashstrap code](https://github.com/barryclark/bashstrap).

## Installation:

1. Back up your current dotfiles (optional):

 ```bash
 $ mv ~/.bash_profile ~/.bash_profile_backup && mv ~/.bashrc ~/.bashrc_backup && mv ~/.gitconfig ~/.gitconfig_backup && mv ~/.gitignore ~/.gitignore_backup
 ```

1. Install Dotfizzles into your home directory:

 ```bash
 $ cd; curl -#L https://github.com/mhulse/dotfizzles/tarball/master | tar -xzv --strip-components 1 --exclude={.editorconfig,.gitattributes,dotfizzles.png,LICENSE,README.md}
 ```

1. Reload:

 ```bash
 $ source ~/.bash_profile
 ```

## WIKI pages:

* [Bash shell tips and tricks](https://github.com/mhulse/dotfizzles/wiki/Bash-shell-tips-and-tricks)
* [Terminal tips and miscellany](https://github.com/mhulse/dotfizzles/wiki/Terminal-tips-and-miscellany)

---

#### LEGAL

Copyright © 2014 [Micky Hulse](http://mky.io)

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this work except in compliance with the License. You may obtain a copy of the License in the LICENSE file, or at:

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

<img width="20" height="20" align="absmiddle" src="https://github.global.ssl.fastly.net/images/icons/emoji/octocat.png" alt=":octocat:" title=":octocat:" class="emoji">
