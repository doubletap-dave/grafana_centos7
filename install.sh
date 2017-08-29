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
  wget link_to_functions && chmod +x fumctions
  wget link_to_strings && chmod +x strings
}
get_helpers

#### Load helper scripts
load_helpers() {
  source $(dirname "$0")/functions.sh && source $(dirname "$0")/strings.sh
}
load_helpers

