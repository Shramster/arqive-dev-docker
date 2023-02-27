#!/bin/bash
echo "Running initilization script, this will clone the repos and set up Docker containers"
echo "Version 1.0 11/16/22"
echo ""


## These values can be changed to the particular branch of the backend and frontent
## that you want to use
## WARNING: Depending on your fork of the project, you may need to configure the Dockerfile and 
## docker-compose.yml in each directory to work correctly with configuration each repo is using.
##
##
backend_repo="https://github.com/kennardlim1220/thearqive-backend"
backend_branch=updated_stack

frontend_repo="https://github.com/kennardlim1220/arQive-frontend"
frontend_branch=updated_stack


echo "Backend branch is: $backend_branch"
echo "Frontend branch is: $frontend_branch"
echo "-----------------------------------"
echo "This can be changed in ./setup.sh"
echo -n "Proceed? [y/n]: "
read -n 1 ans

if [[ "$ans" != "y" ]]; then
  exit 0;
fi

command -v docker >/dev/null 2>&1 || { echo >&2 "I require docker but it's not installed.  Aborting."; exit 1; }
command -v docker-compose >/dev/null 2>&1 || { echo >&2 "I require docker-compose but it's not installed.  Aborting."; exit 1; }
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }


if [[ ! -f "dev/source/backend/defaultdb.sql" ]]; then
  echo "ERROR:"
  echo "File dev/source/backend/defaultdb.sql not found"
  echo "Get a defaultdb.sql file and put it in the directory: dev/source/backend"
  exit 1
fi


echo ""
echo ""
echo "Cloning backend, using branch $backend_branch ..."
if [[ -e "thearqive-backend" ]]; then
  echo "Backend repo exists, skipping clone"
else
git clone --branch $backend_branch $backend_repo 
  if [[ "$?" != "0" ]]; then
    echo "Frontend clone failed. Exiting"
    exit 1
  fi
fi



echo ""
echo ""
echo "Cloning frontend, using branch $frontend_branch ..."
if [[ -e "arQive-frontend" ]]; then
  echo "Frontend repo exists, skipping clone"
else
git clone --branch $frontend_branch $frontend_repo 
  if [[ "$?" != "0" ]]; then
    echo "Frontend clone failed. Exiting"
    exit 1
  fi
fi
##

# CONSIDER ADDING .gitignore so that a git pull doesn't overwrite settings.ini settings.py etc

echo ""
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

echo ""
echo "Running: /dev/docker/buildbackend.sh"
./dev/docker/buildbackend.sh
echo ""
echo "Copying frontend settings files into place"
## Copy front end settings files into place
cp dev/source/frontend/Dockerfile arQive-frontend/Dockerfile

cp dev/source/frontend/docker-compose.yml arQive-frontend/docker-compose.yml


echo ""
echo "Running: /dev/docker/buildfrontend.sh"

./dev/docker/buildfrontend.sh

echo "Frontend and Backend builds completed"
./dev/docker/spin-up.sh

echo "Navigate to here with your web browswer:"
echo "- 127.0.0.1:8000   Backend Development Server"
echo "- 127.0.0.1:3000   Frontend Development Server"
echo -n "Press any key to stop containers... "
read -n 1 ans

if [[ "$ans" != "y" ]]; then
  ./dev/docker/spin-down.sh
fi
