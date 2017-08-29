#!/bin/bash

#### File: install.sh
#### Version: 1.5a
#### Description: Worker
#### Author: Dave (/u/topiaryx) - topiaryx@gmail.com - 28 August 2017 - Utah

#### Check for root permissions
root_check() {
  if [ "$UID" -ne "$ROOT_UID" ]
    then
      echo "Must be root to run this script."
      exit $E_NOTROOT
  fi
}
root_check

#### Get helper scripts
get_helpers() {
  wget https://raw.githubusercontent.com/topiaryx/grafana_centos7/master/functions.sh && chmod +x functions
  wget https://raw.githubusercontent.com/topiaryx/grafana_centos7/master/strings.sh && chmod +x strings
}
get_helpers

#### Load helper scripts
load_helpers() {
  source $(dirname "$0")/functions.sh && source $(dirname "$0")/strings.sh
}
load_helpers

#### Execute
clear

while true; do
    echo -e "Welcome to the Docker/Grafana/InfluxDB and Graphite Install-o-matic 9000!"
    echo
    echo -e "Do you want to update your system? [y/n]: "
    read onsey
    case $onsey in
        [yY] ) install_update; break;; 
        [nN] ) install_noupdate; break;;
           * ) echo -e "Please answer 'y' or 'n' ";;
    esac
done