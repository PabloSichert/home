VSCODE_PACKAGES="
    akamud.vscode-theme-onelight
    dbaeumer.vscode-eslint
    esbenp.prettier-vscode
    Tyriar.sort-lines
"

# install atom plugin if not already installed
for package in $VSCODE_PACKAGES ; do
    code --install-extension $package
    hr
done