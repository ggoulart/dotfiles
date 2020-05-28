#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#install iterm2
brew cask install iterm2

#install firefox
brew cask install firefox

#install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
echo "\n# asdf" >> ~/.zshrc
echo "# add asdf" >> ~/.zshrc
echo ". $(brew --prefix asdf)/asdf.sh" >> ~/.zshrc
echo ". $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash" >> ~/.zshrc

#install golang
asdf plugin add golang
asdf install golang latest
asdf global golang 1.14

#install java
asdf plugin add java
echo "\n# set java home based on asdf" >> ~/.zshrc
echo ". ~/.asdf/plugins/java/set-java-home.sh" >> ~/.zshrc

#install node
brew install coreutils
brew install gpg
asdf plugin add nodejs
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 10.19.0

#install direnv
asdf plugin add direnv
asdf install direnv latest
asdf global direnv 2.21.2
echo "\n# direnv" >> ~/.zshrc
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc

#install jetbrains-toolbox
brew cask install jetbrains-toolbox
