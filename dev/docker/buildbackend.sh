#!/bin/bash
printf "\nCopying backend settings files into place"

if [[ -e "thearqive-backend/GlobalTraqs/settings.ini" ]]; then
  printf "GlobalTraqs/Settings.ini exists, skipping copy"
else
  cp dev/source/backend/settings.ini thearqive-backend/GlobalTraqs/settings.ini
fi

if [[ -e "thearqive-backend/GlobalTraqs/GlobalTraqs/settings.py" ]]; then
  printf "GlobalTraqs/GlobalTraqs/settings.py exists, skipping copy"
else
  cp dev/source/backend/settings.py thearqive-backend/GlobalTraqs/GlobalTraqs/settings.py
fi

cp dev/source/backend/docker-compose.yml thearqive-backend/docker-compose.yml

cp dev/source/backend/Dockerfile thearqive-backend/Dockerfile

cp dev/source/backend/requirements.txt thearqive-backend/requirements.txt

cp dev/source/backend/create_api_key.py thearqive-backend/create_api_key.py
cd thearqive-backend

echo "Deleting old volumes, DB data will be lost..."
### Drop orphans and volumes
docker-compose down -v --remove-orphans

docker-compose build db

## Spin up database and web daemonized
docker-compose up -d
echo "Waiting for DB to finish booting up"
## wait for db to spin up before continuing
until docker-compose exec db psql -U doadmin postgres -c "SELECT" ; do
        echo "Waiting"
	sleep 1
done


### makemigrations and migrate
docker-compose exec web python GlobalTraqs/manage.py makemigrations
docker-compose exec web python GlobalTraqs/manage.py migrate

#### create super user ENV VAR described in docker-compse.yml are
#### used here
echo "DJANGO: Creating superuser"
docker-compose exec web python GlobalTraqs/manage.py createsuperuser --noinput

###
echo "DJANGO: Creating an .env file for the frontend"
docker-compose exec web python GlobalTraqs/manage.py shell -c "exec(open('create_api_key.py').read())" > .env
#
# Copy API KEY .env file to front end
cp ./.env ../arQive-frontend/.env

# STOP BACK END PROCESS so FRONTEND install goes faster
docker-compose stop
