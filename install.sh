#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#install iterm2
brew install --cask iterm2

#install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "\n# Configuring Completions in zsh" >> ~/.zshrc
echo "if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:\$FPATH

  autoload -Uz compinit
  compinit
fi" >> ~/.zshrc

#git alias
git config --global alias.st status

#install tig
brew install tig

#install vim awesome version
cd ~
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#ssh
echo "\n#Add SSH key to the ssh-agent" >> ~/.zshrc
echo 'eval "$(ssh-agent -s)"' >> ~/.zshrc

#install asdf
brew install asdf

#install golang
asdf plugin add golang
asdf install golang latest
asdf global golang 1.23.4

#install direnv
asdf plugin add direnv
asdf install direnv latest
asdf global direnv 2.21.2
echo "\n# direnv" >> ~/.zshrc
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc

#install jetbrains-toolbox
brew install --cask jetbrains-toolbox
