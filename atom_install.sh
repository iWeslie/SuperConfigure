# $package = $1
# if [[ ! -d "$HOME/.atom/packages/$package" ]]
# then
#     apm install $package
# fi


apm install atom-beautify
apm install platformio-ide-terminal
apm install script
apm install git-time-machine
apm install linter
apm install linter-ui-default
apm install highlight-selected
apm install file-icons
apm install pigments
apm install minimap
apm install autocomplete-paths
apm install browser-refresh-on-save
apm install open-in-browser
apm install goto-definition
apm install react
apm install atom-ternjs
apm install atom-wrap-in-tag
apm install autoclose-html
apm install autocomplete-modules
apm install color-picker
apm install docblockr
apm install emmet
apm install emmet-jsx-css-modules
apm install es6-javascript
apm install language-babel


kill `ps -ax | grep Atom | head -n1 | awk {'print$1'}`
atom ~
