#!/bin/bash
set -e

printf "
ARE YOU SURE YOU WANT TO DELETE BOTH REPOSITORIES?
This includes all changes that have not been commited to GitHub
Proceed? [y/n]: "
read -n 1 ans
echo $ADD_WORKDIR
docker-compose --project-directory $ADD_WORKDIR/arQive-frontend down --remove-orphans
docker-compose --project-directory $ADD_WORKDIR/thearqive-backend down --remove-orphans

sudo rm -rf $ADD_WORKDIR/arQive-frontend
sudo rm -rf $ADD_WORKDIR/thearqive-backend

