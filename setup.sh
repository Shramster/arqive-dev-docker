#!/bin/bash
#WORKING_DIR=$(pwd)
echo "Running initilization script, this will clone the repos and set up Docker containers"
echo "Version 1.0 11/16/22"

command -v docker >/dev/null 2>&1 || { echo >&2 "I require docker but it's not installed.  Aborting."; exit 1; }
command -v docker-compose >/dev/null 2>&1 || { echo >&2 "I require docker-compose but it's not installed.  Aborting."; exit 1; }
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }


if [[ ! -f "dev/source/backend/defaultdb.sql" ]]; then
  echo "ERROR:"
  echo "File dev/source/backend/defaultdb.sql not found"
  echo "Get a defaultdb.sql file and put it in the directory: dev/source/backend"
  exit 1
fi

echo "Cloning backend, using branch 'updated_stack' ..."
if [[ -e "thearqive-backend" ]]; then
  echo "Backend repo exists, skipping clone"
else
  git clone --branch updated_stack https://github.com/kennardlim1220/thearqive-backend
fi


echo "Cloning frontend, using branch 'updated_stack' ..."
if [[ -e "arQive-frontend" ]]; then
  echo "Backend repo exists, skipping clone"
else
  git clone --branch updated_stack https://github.com/kennardlim1220/arQive-frontend
fi
##

# CONSIDER ADDING .gitignore so that a git pull doesn't overwrite settings.ini settings.py etc

echo "Copying backend settings files into place"

if [[ -e "thearqive-backend/GlobalTraqs/settings.ini" ]]; then
  echo "GlobalTraqs/Settings.ini exists, skipping copy"
else
  cp dev/source/backend/settings.ini thearqive-backend/GlobalTraqs/settings.ini
fi

if [[ -e "thearqive-backend/GlobalTraqs/GlobalTraqs/settings.py" ]]; then
  echo "GlobalTraqs/GlobalTraqs/settings.py exists, skipping copy"
else
  cp dev/source/backend/settings.py thearqive-backend/GlobalTraqs/GlobalTraqs/settings.py
fi

cp dev/source/backend/docker-compose.yml thearqive-backend/docker-compose.yml

cp dev/source/backend/Dockerfile thearqive-backend/Dockerfile

cp dev/source/backend/requirements.txt thearqive-backend/requirements.txt

cp dev/source/backend/create_api_key.py thearqive-backend/create_api_key.py

./dev/docker/buildbackend.sh

echo "Copying frontend settings files into place"
## Copy front end settings files into place
cp dev/source/frontend/Dockerfile arQive-frontend/Dockerfile

cp dev/source/frontend/docker-compose.yml arQive-frontend/docker-compose.yml

./dev/docker/buildfrontend.sh
