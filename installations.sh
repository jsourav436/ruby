sudo apt-get update
sudo apt-get install git gitk git-gui
sudo apt-get install gcc build-essential libpq-dev libreadline-dev libsqlite33-dev zliblg-dev
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
. ~/.bashrc
echo 'eval "$(rbenv init .)"' >> ~/.bashrc
source ~/.bashrc
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
rbenv install -v 2.4.0
rbenv global 2.4.0
echo "gem: --no-document" > ~/.gemrc
gem install bundler
gem install rails -v 5.0.1
rbenv rehash
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get install node.js
export PHANTOM_JS="phantomjs-2.1.1-linux-x86_64"
cd /tmp curl -L https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 | tar xvjf .
sudo mv $PHANTOM_JS /usr/local/share
sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin

