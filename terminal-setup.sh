#!/bin/bash
echo Select A Kitty Theme                                                                                                                    
echo "Alucard"  
echo "Dracula"  
echo "snazzy" 
echo "Source Code X"  
echo "Ubuntu"  
read theme
THEME=https://raw.githubusercontent.com/dexpota/kitty-themes/master/themes/$theme.conf
wget "$THEME" -P ~/.config/kitty/kitty-themes/themes
cd ~/.config/kitty
ln -s ./kitty-themes/themes/$theme.conf ~/.config/kitty/theme.conf
echo "include ./theme.conf" >> ~/.config/kitty/kity.conf

sudo pacman -S zsh --noconfirm
cd
cd .config
mkdir zsh
cd zsh
sudo pacman -S git --noconfirm
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
echo 'source .config/zsh/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions
echo 'source .config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >>~/.zshrc

git clone https://github.com/zsh-users/zsh-history-substring-search
echo 'source .config/zsh/zsh-history-substring-search.zsh' >>~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo 'source .config/zsh/zsh-syntax-highlighting' >>~/.zshrc
