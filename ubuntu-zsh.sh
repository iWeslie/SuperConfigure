# simply install zsh with config on ubuntu

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

sed -i 's/plugins=(git)/\
plugins=(\
    git\
    zsh-autosuggestions\
    zsh-syntax-highlighting\
)/g' ~/.zshrc

cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

echo "alias vi='vim'" >> ~/.zshrc
echo "syntax on" >> ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "set mouse=a" >> ~/.vimrc

source ~/.zshrc
cd ~