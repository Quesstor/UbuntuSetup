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
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s $(which zsh)
zsh
source ~/.zshrc
```

## Docker
```bash
sudo apt install docker.io
sudo usermod -aG docker ${USER}
reboot
```

## Python
```bash
sudo apt get install python3-pip
```

## Git 
```bash
git config --global credential.helper store
```
