cd arQive-frontend

docker-compose down -v --remove-orphans

docker-compose build

docker-compose run node npm install
