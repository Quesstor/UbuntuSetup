# Installation


```bash
sudo apt -y install git
git config --global credential.helper store
git config --global user.name Quesstor
git config --global user.email quesstor@gmail.com
```

```bash
xdg-open https://code.visualstudio.com/Download
```

zsh + oh-my-zsh + tilda

```bash
sudo apt -y install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sudo apt -y install zsh-theme-powerlevel9k
echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
sudo apt-get install zsh-syntax-highlighting
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
echo "ZSH_THEME=\"agnoster\"" >> ~/.zshrc
chsh -s $(which zsh)
zsh
source ~/.zshrc
sudo apt -y install tilda
```


```bash
sudo snap install mailspring
```

Add `/usr/bin/tilda` to autostart
Add `/snap/bin/mailspring` to autostart


```
sudo ubuntu-drivers autoinstall
```

Monitor setup
```bash
gsettings set org.gnome.desktop.interface scaling-factor 2

xrandr --dpi 276 --fb 7680x2160 \
    --output HDMI-1 --mode 1920x1080 --scale 2x2 --pos 0x0 --panning 3840x2160+0+0 \
    --output HDMI-0 --mode 3840x2160 --scale 1x1 --pos 3840x0 --panning 3840x2160+3840+0

xrandr --output HDMI-0 --scale 1.3x1.3
```