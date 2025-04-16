#!/bin/bash


cd CLI

#Identifies if user is root if not tries to see they have sudo
if [ "$EUID" -ne 0 ]; then
  SUDO="sudo"
else
  SUDO=""
fi

#curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

$SUDO apt-get update
$SUDO apt-get install cabal-install


$SUDO apt install -y python3 python3-pip

pip install -r ../requirements.txt

cabal build

#cabal run

#echo " alias = \" ~/lambda-check/CLI/dist-newstyle/build/*/ghc-8.8.4/Lambda-Check-0.1.0.0/x/Lambda-Check/build/Lambda-Check \" " >> ~/.bashrc



#source ~/.bashrc



