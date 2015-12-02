#!/bin/bash
sudo apt-add-repository ppa:webupd8team/java
sudo apt-add-repository ppa:tualatrix/ppa

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo sh -c 'echo "deb http://www.rabbitmq.com/debian/ testing main" > /etc/apt/sources.list.d/rabbitmq.list'
wget --quiet -O - https://www.rabbitmq.com/rabbitmq-signing-key-public.asc | sudo apt-key add -

sudo apt-get update

sudo apt-get install gnome-shell screen vim git mercurial htop terminator \
nodejs npm oracle-java8-installer postgresql-9.4 postgresql-server-dev-9.4 rabbitmq-server \
ubuntu-tweak gnome-tweak-tool python-pip mysql-server python-dev  libmysqlclient-dev \
libssl-dev libcurl4-openssl-dev build-essential libpq-dev

sudo pip install virtualenv

mkdir ~/dev
