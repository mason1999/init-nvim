#! /bin/bash

echo "========== INSTALLING NEOVIM =========="
VERSION=0.11.5
PATH_DIR="${HOME}/.local/bin"
curl -Lo "${PATH_DIR}/nvim-linux-x86_64.tar.gz" "https://github.com/neovim/neovim/releases/download/v${VERSION}/nvim-linux-x86_64.tar.gz"
pushd "${PATH_DIR}"
tar -xzvf "nvim-linux-x86_64.tar.gz"
ln -sT "./nvim-linux-x86_64/bin/nvim" "nvim"
popd
echo "DONE!"
