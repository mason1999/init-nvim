#! /bin/bash

echo "========== INSTALLING NEOVIM =========="
VERSION=0.11.5
PATH_DIR="${HOME}/.local/bin"
curl -Lo "${PATH_DIR}/nvim-linux-x86_64.tar.gz" "https://github.com/neovim/neovim/releases/download/v${VERSION}/nvim-linux-x86_64.tar.gz"
pushd "${PATH_DIR}"
tar -xzvf "nvim-linux-x86_64.tar.gz"
ln -sT "./nvim-linux-x86_64/bin/nvim" "nvim"
mkdir -p "${HOME}/.config/nvim/" 
cat <<'EOF' > "${HOME}/.config/nvim/init.vim"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <C-Up> :resize +5<CR>
nnoremap <silent> <C-Down> :resize -5<CR>
nnoremap <silent> <C-Left> :vertical resize -5<CR>
nnoremap <silent> <C-Right> :vertical resize +5<CR>

tnoremap <silent> <C-h> <C-\><C-n><C-w>h
tnoremap <silent> <C-h> <C-\><C-n><C-w>j
tnoremap <silent> <C-h> <C-\><C-n><C-w>k
tnoremap <silent> <C-h> <C-\><C-n><C-w>l

augroup HelpBelow
  autocmd!
  autocmd Filetype help wincmd J
augroup END

EOF
popd
echo "DONE!"
