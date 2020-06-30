sudo apt update
sudo apt-get -y install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s $(which zsh)
zsh
sudo apt-get -y install zsh-theme-powerlevel9k
sudo apt-get install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo apt-get -y install tilda
sudo apt -y install git
git config --global credential.helper store
git config --global user.name Quesstor
git config --global user.email quesstor@gmail.com
xdg-open https://code.visualstudio.com/Download
git clone https://github.com/Quesstor/UbuntuSetup.git ~/UbuntuSetup
ln -s ~/UbuntuSetup/.zshrc ~/.zshrc
ln -s ~/UbuntuSetup/.tmux.conf ~/.tmux.conf

mkdir ~/.fonts
cp Menlo\ for\ Powerline.ttf ~/.fonts/
fc-cache -vf ~/.fonts
echo "Update VSCodes terminal font to: Menlo for Powerline"
