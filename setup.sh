#!/bin/bash
#WORKING_DIR=$(pwd)
echo "Running initilization script, this will clone the repos and set up Docker containers"
echo "Version 1.0 11/16/22"

command -v docker >/dev/null 2>&1 || { echo >&2 "I require docker but it's not installed.  Aborting."; exit 1; }
command -v docker-compose >/dev/null 2>&1 || { echo >&2 "I require docker-compose but it's not installed.  Aborting."; exit 1; }
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }


if [[ ! -f "dev/source/defaultdb.sql" ]]; then
  echo "ERROR:"
  echo "File dev/source/defaultdb.sql not found"
  echo "Get a defaultdb.sql file and put it in the directory: dev/source"
  exit 1
fi


if [[ -e "thearqive-backend" ]]; then
  echo "Backend repo exists, skipping clone"
else
  git clone https://github.com/kennardlim1220/thearqive-backend
fi

if [[ -e "arQive-frontend" ]]; then
  echo "Backend repo exists, skipping clone"
else
  git clone https://github.com/kennardlim1220/arQive-frontend
fi
##

# CONSIDER ADDING .gitignore so that a git pull doesn't overwrite settings.ini settings.py etc

echo "Copying backend settings files into place"
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
