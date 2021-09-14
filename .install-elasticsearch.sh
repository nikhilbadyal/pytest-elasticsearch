#!/bin/bash -v
function install_from_zip {
  INSTALL_PATH=$HOME/es/$2
  echo $INSTALL_PATH
  if [ ! -d "$INSTALL_PATH" ]; then
    wget -nv $1 -O out
    unzip out
    mv $2 $INSTALL_PATH
  fi
  $INSTALL_PATH/bin/elasticsearch -Vv
  remove_if_erroneus $INSTALL_PATH
  rm out
}

function install_from_targz {
  INSTALL_PATH=$HOME/es/$2
  echo $INSTALL_PATH
  if [ ! -d "$INSTALL_PATH" ]; then
    wget -nv $1 -O out
    tar -zxf out
    mv $2 $INSTALL_PATH
  fi
  $INSTALL_PATH/bin/elasticsearch -Vv
  remove_if_erroneus $INSTALL_PATH
}

function remove_if_erroneus {
  if [ ! -f "$1/bin/elasticsearch" ]; then
    rm -rv $1
  fi
}

if [ ! -f "$HOME/es" ]; then
  mkdir $HOME/es
fi

install_from_zip https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.8.18.zip elasticsearch-6.8.18
install_from_targz https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.11.2-linux-x86_64.tar.gz elasticsearch-7.11.2
install_from_targz https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.12.1-linux-x86_64.tar.gz elasticsearch-7.12.1
install_from_targz https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.13.4-linux-x86_64.tar.gz elasticsearch-7.13.4
install_from_targz https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.14.1-linux-x86_64.tar.gz elasticsearch-7.14.1
