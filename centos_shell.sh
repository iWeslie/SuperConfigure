yum update
yum -y install tree vim git autoconf wget git gcc net-tools vim-enhanced


touch ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "set mouse=a" >> ~/.vimrc
echo "alias vi='vim'" >> ~/.bashrc
source ~/.bashrc

echo "alias grep='grep --color'" >> ~/.bash_profile
echo "alias egrep='egrep --color'" >> ~/.bash_profile
echo "alias fgrep='fgrep --color'" >> ~/.bash_profile
source ~/.bash_profile
