#!/bin/bash
mkdir arqive-dev-environment

cd arqive-dev-environment

git clone https://github.com/kennardlim1220/thearqive-backend

git clone https://github.com/kennardlim1220/arQive-frontend


## Not tested yet
cp dev/docker/source/settings.ini GlobalTraqs/settings.ini

##
cp dev/docker/source/settings.py GlobalTraqs/GlobalTraqs/settings.ini
