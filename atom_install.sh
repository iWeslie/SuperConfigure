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

kill `ps -ax | grep Atom | head -n1 | awk {'print$1'}`
atom ~
