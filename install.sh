#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#install iterm2
brew cask install iterm2

#install firefox
brew cask install firefox

#install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo -e "\n# Configuring Completions in zsh" >> ~/.zshrc
echo -e "if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:\$FPATH

  autoload -Uz compinit
  compinit
fi" >> ~/.zshrc

#install vim awesome version
cd ~
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#install asdf
brew install asdf
echo -e "\n# asdf" >> ~/.zshrc
echo -e "# add asdf" >> ~/.zshrc
echo -e ". $(brew --prefix asdf)/asdf.sh" >> ~/.zshrc
echo -e ". $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash" >> ~/.zshrc

#install golang
asdf plugin add golang
asdf install golang latest
asdf global golang 1.14

#install java
asdf plugin add java
echo -e ".\n# set java home based on asdf"
echo -e ". ~/.asdf/plugins/java/set-java-home.sh" >> ~/.zshrc

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
echo -e "\n# direnv" >> ~/.zshrc
echo -e 'eval "$(direnv hook zsh)"' >> ~/.zshrc

#install jetbrains-toolbox
brew cask install jetbrains-toolbox

#ssh
echo -e "\n#Add SSH key to the ssh-agent" >> ~/.zshrc
echo -e 'eval "$(ssh-agent -s)"' >> ~/.zshrc

#git alias
git config --global alias.st status

#install tig
brew install tig
