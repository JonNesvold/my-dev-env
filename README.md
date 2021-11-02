# My Work Environment

This is a personal work env setup for primarily Arch linux. The neovim and zsh setup will work for MacOS as well.

### Dependencies

#### Zsh setup
`$ sudo pacman -S zsh $$ chsh -s $(which zsh)`

###### Oh-My-Zsh for easy plugin config
`$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

###### install plugins (syntax highligting, fzf
```
$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
$ echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${$HOME}/.zshrc
```

`$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf $$ ~/.fzf/install`

#### System wide deps
`$ sudo pacman -S neovim pynvim perl ruby flake8`

#### VimPlug install
`$ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \\
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

#### Updates and Path setups
###### Ruby update for neovim
```
$ export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
$ export PATH="$PATH:$GEM_HOME/bin"
$ gem install --user neovim
$ gem update
```

######Python update for neovim
`$ python -m pip install --user --upgrade pynvi`

##### Polybar install
```
$ git clone https://aur.archlinux.org/polybar.git && cd polybar
$ makepkg -si
```
