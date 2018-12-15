#############################################################
# Thinkpad system setup
#

# init
apt-get update

# Thinkpad essentials
apt-get install tlp tlp-rdw acpi-call-dkms tp-smapi-dkms acpi-call-dkms

# system essentials
apt-get install htop screen vim python3-pip apt-transport-https
ln -s /usr/bin/python3 /usr/bin/python
ln -s /usr/bin/pip3 /usr/bin/pip

# dev essentials
# postgres
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -sc)-pgdg main" > /etc/apt/sources.list.d/PostgreSQL.list'
# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
apt-get update
apt-get install postgresql-11 virtualenv virtualenvwrapper git libgtk2.0-0 sublime-text

# gnome essentials
apt-get install gnome-tweak-tool gnome-session


mkdir ~/dev

