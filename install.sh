#!/bin/bash

BIN_PATH="$HOME/bin"

#checks if the the bin folder exists and create it if it doesn't

if [ ! -d $BIN_PATH ]; then
  echo "Creating ~/bin folder"
  mkdir $BIN_PATH
fi

# install the script
cd $BIN_PATH
curl -sS https://raw.githubusercontent.com/ibetovski/catch-up-with-merge/master/catch-up > $BIN_PATH/catch-up
chmod u+x $BIN_PATH/catch-up

# check if the user's local bin folder is in the PATH variable. If not, add it.
if [[ ! $PATH =~ $BIN_PATH ]]; then
  echo "Adding ~/bin to PATH"
  echo "export PATH=\"$PATH:$BIN_PATH\"" > ~/.bash_profile
  source ~/.bash_profile
fi