#!/bin/bash
printf "Running initilization script, this will clone the repos and set up Docker containers\n"
printf "Version 1.1 03/31/23\n"

if [[ -e "config" ]]; then
  printf "Configuration file '.config' exists \n"
  printf "Exporting config ..."
  export $(cat "$ADD_WORKDIR/config" | xargs) >/dev/null 2>&1

  printf "
  Backend branch is: $BACKEND_BRANCH
  Backend repo is: $BACKEND_REPO
  Frontend branch is: $FRONTEND_BRANCH
  Frontend repo is: $FRONTEND_REPO
  -----------------------------------
  This can be changed in /config\n
  Proceed? [y/n]: "
  read -n 1 ans
  
  if [[ "$ans" != "y" ]]; then
    exit 0;
  fi
else
  printf "Modify config.template with the proper repos/branches and rename to config"
fi


printf "
Backend branch is: $BACKEND_BRANCH
Frontend branch is: $FRONTEND_BRANCH
-----------------------------------
This can be changed in ./setup.sh\n
Proceed? [y/n]: "
read -n 1 ans

if [[ "$ans" != "y" ]]; then
  exit 0;
fi

## Prerequisites: Docker, docker-compose, git and a defaultdb.sql file
command -v docker >/dev/null 2>&1 || { echo >&2 "Docker is required to run this script but it's not installed.  Aborting.\n"; exit 1; }
command -v docker-compose >/dev/null 2>&1 || { echo >&2 "docker-compose is required to run this script but it's not installed.  Aborting.\n"; exit 1; }
command -v git >/dev/null 2>&1 || { echo >&2 "git is required to run this script but it's not installed.  Aborting.\n"; exit 1; }

if [[ ! -f "dev/source/backend/defaultdb.sql" ]]; then
  printf "\n
ERROR:\n
File dev/source/backend/defaultdb.sql not found
Get a defaultdb.sql file and put it in the directory: dev/source/backend\n"
  exit 1
fi

## Clone repos, these must both be present before the
## docker environment can be built.  The buildbackend.sh
## script creates a .env file that for the frontend so
## the directory ./arqive-frontend must exist
printf "\nCloning frontend, using branch $FRONTEND_BRANCH ...\n"
if [[ -e "arQive-frontend" ]]; then
  echo "Frontend repo exists, skipping clone\n"
else
git clone --branch $FRONTEND_BRANCH $FRONTEND_REPO 
  if [[ "$?" != "0" ]]; then
    echo "Frontend clone failed. Exiting\n"
    exit 1
  fi
fi


printf "\n
Cloning backend, using branch $BACKEND_BRANCH ...\n"
if [[ -e "thearqive-backend" ]]; then
  printf "Backend repo exists, skipping clone\n"
else
git clone --branch $BACKEND_BRANCH $BACKEND_REPO 
  if [[ "$?" != "0" ]]; then
    printf "Backend clone failed. Exiting\n"
    exit 1
  fi
fi

## Build scripts
printf "Running: /dev/docker/buildbackend.sh\n"
./dev/docker/buildbackend.sh

printf "Running: /dev/docker/buildfrontend.sh\n"

./dev/docker/buildfrontend.sh

## Testing scripts
printf "Frontend and Backend builds completed\n"
./dev/docker/spin-up.sh

printf "\n
Navigate to here with your web browswer:
- 127.0.0.1:8000   Backend Development Server
- 127.0.0.1:3000   Frontend Development Server
Press any key to stop containers... "
read -n 1 ans

if [[ "$ans" != "y" ]]; then
  ./dev/docker/spin-down.sh
fi
