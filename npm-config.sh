# https://reactnative.cn/docs/getting-started.html
# React Native 中文网

brew upgrade
brew install node
brew install watchman

# 安装完 Node 后建议设置 npm 镜像以加速后面的过程
npm config set registry https://registry.npm.taobao.org --global
npm config set disturl https://npm.taobao.org/dist --global

# Yarn是 Facebook 提供的替代 npm 的工具，可以加速 node 模块的下载。
npm install -g yarn react-native-cli -ddd
# 安装完 yarn 后同理也要设置镜像源：
yarn config set registry https://registry.npm.taobao.org --global
yarn config set disturl https://npm.taobao.org/dist --global

npm i -D cowsay
