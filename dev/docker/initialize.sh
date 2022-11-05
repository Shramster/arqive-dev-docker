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

cd ../arQive-frontend

docker-compose down -v --remove-orphans

docker-compose run node npm install

echo "Test containers by running:\n docker-compose up \nIn the arqive-frontend and thearqive-backend directories (using sepaate terminals)\nthen navigate to 127.0.0.1:8000 for backend and 127.0.0.1:3000 for frontend"

## Library is added throught the docker-compose file
##And then add the pins
#until docker-compose exec db psql -U postgres postgres -c "INSERT INTO pins_categorytype VALUES (2, 'Personal', '')" ; do
#        echo "Waiting"
#	sleep 1
#done
#until docker-compose exec db psql -U postgres postgres -c "INSERT INTO pins_categorytype VALUES (2, 'Historical', '');" ; do
#        echo "Waiting"
#	sleep 1
#done
#until docker-compose exec db psql -U postgres postgres -c "INSERT INTO pins_categorytype VALUES (3, 'Community', '');" ; do
#        echo "Waiting"
#	sleep 1
#done
#### Broken have to import "manually"
##docker-compose exec web python GlobalTraqs/manage.py shell --plain -c "exec(open('/code/GlobalTraqs/old_story_upload.py').read())"
##
#### COPY .env file to frontend side of things
##
###docker-compose down
###docker-compose up
