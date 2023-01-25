#!/bin/bash
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
