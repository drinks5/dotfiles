# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install tools
brew install pipenv proxychains-ng tmux neovim gem

gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/
gem install tmuxinator

# install brew cask
brew tap caskroom/cask

brew cask install caskroom/cask/google-chrome shadowsocksx-ng alfred dash
