#!/bin/bash


cd CLI

#curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

sudo apt-get update
sudo apt-get install cabal-install


sudo apt install python3.12

pip install -r ../requirements.txt

cabal build

#cabal run

#echo " alias = \" ~/lambda-check/CLI/dist-newstyle/build/*/ghc-8.8.4/Lambda-Check-0.1.0.0/x/Lambda-Check/build/Lambda-Check \" " >> ~/.bashrc



#source ~/.bashrc



