#!/bin/bash
#WORKING_DIR=$(pwd)
echo "Running initilization script, this will clone the repos and set up Docker containers\n"
echo "Version 1.0 11/3/22"
git clone https://github.com/kennardlim1220/thearqive-backend
###
git clone https://github.com/kennardlim1220/arQive-frontend

# CONSIDER ADDING .gitignore so that a git pull doesn't overwrite settings.ini settings.py etc

# Copy backend settings files into place
cp dev/source/settings.ini thearqive-backend/GlobalTraqs/settings.ini

cp dev/source/settings.py thearqive-backend/GlobalTraqs/GlobalTraqs/settings.py

cp dev/source/docker-compose.yml thearqive-backend/docker-compose.yml

cp dev/source/Dockerfile thearqive-backend/Dockerfile

cp dev/source/requirements.txt thearqive-backend/requirements.txt

cp dev/source/create_api_key.py thearqive-backend/create_api_key.py


## Copy front end settings files into place
cp dev/source/frontend/Dockerfile arQive-frontend/Dockerfile

cp dev/source/frontend/docker-compose.yml arQive-frontend/docker-compose.yml

./dev/docker/initialize.sh
