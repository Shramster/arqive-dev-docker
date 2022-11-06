##The ArQive Docker Dev Environment

This bash script should set up the environment you'll need:

    - Docker
    - docker-compose (only linux users, comes bundled with Docker for Mac and Windows)
    - git
    - Some shell or environment to run a bash script (WSL 2.0, git bash etc)

## BEFORE RUNNING:

1. You will need to get a .sql file from the production server and
  place it in the directory dev/source it should look like:

  	dev/source/defaultdb.sql

2. Check if you can run docker and docker-compose from your shell
  enviroment. You might need to add your $USER to the docker usergroup.  Try this
  command:

	docker ps

If this results in some kind of error message you likely need to create and add yourself
to the docker group.  Follow the instructions on this page:

        https://docs.docker.com/engine/install/linux-postinstall/


Run the ./setup.sh script and follow the prompts.

When its done open this in a browswer to check if it worked:

127.0.0.1:8000  -- This is the Django backend server
127.0.0.1:3000  -- This is the React frontend side

From here you should see the containers in Docker Desktop and
you can easily spin them up, pause or whatever you need. Below
are some commands if you wanna use the command line.  The Cheat
sheet is helpful and I can show you more if you wanna learn.
Docker is a open source project with a lot of documentation online
so a quick search answers most questions.

HELPFUL COMMANDS
CHEAT SHEET: https://devhints.io/docker-compose

docker-compose:
  This command reads the docker-compose.yml in your current directory and performs an
  action on the services
   # Starts existing containers for a service.
   docker-compose start

   # Stops running containers without removing them.
   docker-compose stop

   # Pauses running containers of a service.
   docker-compose pause

   # Unpauses paused containers of a service.
   docker-compose unpause

   # Lists containers.
   docker-compose ps

   # Builds, (re)creates, starts, and attaches to containers for a service.
   docker-compose up

     Spins up whatever is detailed in the docker-compose.yml so:

     `arQive-frontend/docker-compose up` will spin up the NODE development server
         This can be verified by visiting: 127.0.0.1:3000  -- This is the React frontend site


     `thearqive-backend/docker-compose up` will spin up Django/REST/Postgres and the Django development server
     	This can be verified by visiting: 127.0.0.1:8000  -- This is the backend

   # Stops containers and removes containers, networks, volumes, and images created by up.
   docker-compose down

     USEFUL COMMAND:
	`docker-compose down -v --remove-orphans`
          When you run this in the frontend or backend directory it will remove any "hanging" or "orphaned" volumes
	  or containers.  This is necessary to get a clean slate sometimes.


  docker-compose down
