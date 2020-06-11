# Installation


## Shell

### zsh + oh-my-zsh https://ohmyz.sh/

```bash
sudo apt -y install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
echo "ZSH_THEME=\"agnoster\"" >> ~/.zshrc
chsh -s $(which zsh)
zsh
source ~/.zshrc
```

### zsh-theme-powerlevel9k https://github.com/Powerlevel9k/powerlevel9k

```bash
sudo apt -y install zsh-theme-powerlevel9k
echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
source ~/.zshrc
```

### zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting

```bash
sudo apt-get install zsh-syntax-highlighting
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
source ~/.zshrc
```

### zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/g' ~/.zshrc 
source ~/.zshrc
```
### zsh-tmux https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux
Paste this into your ~/.zshrc
```config
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
ZSH_TMUX_AUTOSTART=true

plugins=(git zsh-autosuggestions tmux)

source $ZSH/oh-my-zsh.sh
source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

Paste this into ~/.tmux.conf
```config
# split panes 
bind -n M-d split-window -h
bind -n M-s split-window -v
unbind '"'
unbind %

# switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

#fullscreen
bind -n M-w resize-pane -Z

#enable scroll
set -g mouse on 
```

### Tilda https://wiki.ubuntuusers.de/Tilda/

```bash
sudo apt -y install tilda
```

## Programs

### Mailspring
```bash
sudo snap install mailspring
```

### Git
```bash
sudo apt -y install git
git config --global credential.helper store
git config --global user.name Quesstor
git config --global user.email quesstor@gmail.com
```
### vscode
```bash
xdg-open https://code.visualstudio.com/Download
```

### pip
```bash
sudo apt-get install python3-pip
```

## Ubuntu setup

### Drivers
```
sudo ubuntu-drivers autoinstall
```

### Monitor setup
```bash
gsettings set org.gnome.desktop.interface scaling-factor 2

echo "xrandr --dpi 276 --fb 7680x2160 \
    --output HDMI-1 --mode 1920x1080 --scale 2x2 --pos 0x0 --panning 3840x2160+0+0 \
    --output HDMI-0 --mode 3840x2160 --scale 1x1 --pos 3840x0 --panning 3840x2160+3840+0" >> ~/.screenSetup
echo "xrandr --output HDMI-0 --scale 1.3x1.3" >> ~/.screenSetup
```

Add `/usr/bin/tilda` to autostart
Add `/snap/bin/mailspring` to autostart
Add `~/.screenSetup` to autostart
