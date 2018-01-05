#### Create symbol links for every dotfiles

```bash
ln -s <path-to-dotfiles>/.zshrc ~/.zshrc
ln -s <path-to-dotfiles>/.vimrc ~/.vimrc
ln -s <path-to-dotfiles>/.vim/vimrc_NERDTree ~/.vim/vimrc_NERDTree
ln -s <path-to-dotfiles>/.tmux.conf ~/.tmux.conf
ln -s <path-to-dotfiles>/.ideavimrc ~/.ideavimrc
```

#### NERDTree(iTerm2) Font setting
In order to show devicons in NERDTree file tree, we need to install one of nerdfonts. We can try any other fonts if we want. Get more nerdfonts from this repo https://github.com/ryanoasis/nerd-fonts

For this example, we install font `Sauce Code Pro Nerd Font Complete Mono.ttf`

Open iTerm2/Preferences/Profiles/Text

Check `Use a different font for non-ASCII txxt`, select font `SauceCodePro Nerd Font Mono`
