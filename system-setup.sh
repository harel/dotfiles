#############################################################
# Thinkpad system setup
#

# init
apt-get update

# Thinkpad essentials
apt-get install tlp tlp-rdw acpi-call-dkms tp-smapi-dkms acpi-call-dkms

# system essentials
apt-get install htop screen vim python3-pip apt-transport-https curl ca-certificates sofware-properties-common

ln -s /usr/bin/python3 /usr/bin/python
ln -s /usr/bin/pip3 /usr/bin/pip

# dev essentials
pip install virtualenv virtualenvwrapper
# postgres
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -sc)-pgdg main" > /etc/apt/sources.list.d/PostgreSQL.list'
# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/dev/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
# docker compose
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#node
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

apt-get update
apt-get install postgresql-11  git libgtk2.0-0 sublime-text docker-ce

usermod -aG docker ${USER}


# gnome essentials
apt-get install gnome-tweak-tool gnome-session


mkdir -P ~/dev

