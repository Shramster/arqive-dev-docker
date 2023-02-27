## The ArQive Docker Dev Environment


This bash script creates Docker containers for the backend and frontend of www.thearqive.com Senior Design Project that can be used for a working environment.  Docker was chosen for this project so that different software versions could easily be substituted and built to see how they work with eachother.  The project is designed to be forked, each user can configure the containers to fit the stack they are working on and share that with others. 


Each contains the repo, Dockerfile and docker-compose.yml that pertains to their respective software stack.  These files are plain text and easy to modify, read up on the Docker and docker-compose documentation to make changes.  The repository and branch can be changed in the `./setup.sh` if you are cloning the repos from somewhere else.

The Django and the backend requires some configuration and this project attempts to automate that. However it might not always work in practice so an explanation of what's going on: 


#### Getting Started
---
#### Prerquisites 
* Bash shell
    - For Windows: <a href="https://learn.microsoft.com/en-us/windows/wsl/install">WSL 2.0</a> with Ubuntu, git bash and CIGWYN all worked
    - For Mac and Linux: Built-in bash shell
- A database dump from production: 
    - placed at: `dev/source/defaultdb.sql`
- git
- <a href="https://docs.docker.com/get-docker/">Docker</a> and <a href="https://docs.docker.com/compose/install/">docker-compose</a>

#### Installation

    git clone github.com/Shramster/arqive-dev-docker
    cd arqive-dev-docker/
    ./setup.sh

Run the `./setup.sh` script and follow the prompts. This will clone the backend and frontend repos, build their containers and start the development servers.

After running you should see the containers in Docker Desktop.

Navigate to here with your web browser:

    127.0.0.1:8000   Backend Development Server
    127.0.0.1:3000   Frontend Development Server 

If everything ran correctly the app served at 127.0.0.1:3000 should look and act like www.thearqive.com.


#### Organization:
After running the directory structure works like this:

    │    
    ├── thearqive-backend/		   
    │    
    ├──  arQive-frontend/		   
    │    
    ├── dev
    │   ├── docker		// Contains: all *.sh used by setup.sh
    │   └── source		// Contains: Dockerfiles, docker-compose.yml, create_api_key.py etc
    │       │		 
    │       ├── backend
    │       └── frontend
    │    
    ├── README.md
    └── setup.sh



#### Trouble shooting
##### Backend

./dev/docker/buildbackend.sh
* `docker-compose exec web python GlobalTraqs/manage.py createsuperuser --noinput`

    This creates a super user for the Django admin page, the password and username are configured in the backend docker-compose.yml. If you can't login to the Django admin page, spin up the backend container and run this command.
* `docker-compose exec web python GlobalTraqs/manage.py shell -c "exec(open('create_api_key.py').read())" > .env`

    Creates a .env file with an API key for the frontend that must be copied into the frontend directory so Node can source it when it boots up.  If the webpage is loading and displaying the map but not the pins this may be the culprit. Spin up the backend and try running this on it again or check whats in the .env file.
###### Postgres:

The postgres config is contained in the docker-compose.yml and is easy to change.
* `defaultdb.sql` is imported into the container via the `./thearqive-backend/docker-compose.yml`
* user and password are defined in the backend `./thearqive-backend/docker-compose.yml`


#### Documentation:

* <a href="https://docs.docker.com/reference/">Docker</a>
* <a href="https://docs.docker.com/compose/">docker-compose</a>
* <a href="https://learn.microsoft.com/en-us/windows/wsl/">WSL 2.0</a>
* <a href="https://docs.djangoproject.com/en/4.1/">Django Documentation</a>
* <a href="https://nodejs.org/en/docs/">Node Live server</a>
* <a href="https://devhints.io/docker-compose">Docker-compose CLI cheat-sheet</a>

#### TODO:

* Allow rebuilding of frontend and backend separately
