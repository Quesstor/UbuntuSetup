# Installation


## Shell
1. Open Terminal
1. run ```stty intr ^k```
2. Open Settings -> Shortcuts 
2. Change Copy -> Ctrl+c
2. Change Paste -> Ctrl+v
1. Git clone this into your home directory `~`

### zsh + tmux + theme

```bash
ln -s ~/UbuntuSetup/.tmux.conf ~/.tmux.conf
ln -s ~/UbuntuSetup/.zshrc ~/.zshrc 
sudo apt -y install zsh tmux zsh-theme-powerlevel9k zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s $(which zsh)
zsh
source ~/.zshrc
```

