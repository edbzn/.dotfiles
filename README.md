<img src="./.assets/dotfiles-logo.png" width="300" alt="dotfiles">

This repository provides my ready-to-use dev environment in seconds using [Ansible](https://www.ansible.com
) and [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

1. Clone the repository in the home directory.

```sh
git clone git@github.com:edbzn/dotfiles.git ~/dotfiles
```

2. Install and configure the tools.

```sh
~/dotfiles/install.sh
```

## Update

1. List available tags.

```sh
./tags.sh
```

2. Update tools, note that tags are optional, if not passed it will update everything.

```sh
./update.sh docker node dotfiles chrome
```

## Tools

- **Shell** : Zsh + [Oh My Zsh](https://ohmyz.sh/)
- **Terminal** : Terminator
- **Runtime** : Node.js + Yarn + NPM + [n](https://github.com/tj/n)
- **Node Packages** : Nx + @angular/cli + http-server
- **Containers** : Docker CE + Docker Compose
- **Versioning** : Git + [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
- **Editors** : Visual Studio Code (TODO) + Vim
- **Browser** : Google Chrome
- **Collaboration** : Slack (TODO)
- **Fonts** : [Fira Code fonts](https://github.com/tonsky/FiraCode) (TODO)
- **Various** : cURL + htop + [GNU Stow](https://www.gnu.org/software/stow/) + [Flameshot](https://flameshot.org/)
