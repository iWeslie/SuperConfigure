#!bin/bash
yum install -y git clang gcc-c++ uuid-devel libicu-devel icu libedit-devel libxml2-devel sqlite-devel swig python-devel ncurses-libs ncurses-devel pkgconfig libuuid-devel epel-release libbsd-devel

cd ~
wget https://cmake.org/files/v3.9/cmake-3.9.0.tar.gz
tar -zxvf cmake-3.9.0.tar.gz
cd cmake-3.9.0
./bootstrap --prefix=/usr
make
sudo make install
