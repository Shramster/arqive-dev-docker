#!/bin/bash
printf "Copying frontend settings files into place"
## Copy front end settings files into place
cp dev/source/frontend/Dockerfile arQive-frontend/Dockerfile

cp dev/source/frontend/docker-compose.yml arQive-frontend/docker-compose.yml



cd arQive-frontend

docker-compose down -v --remove-orphans

docker-compose build

docker-compose run node npm install
