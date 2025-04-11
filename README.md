# data_modeling_zamzam_yusuf

## 📤 Pushing and Sharing Work
After making changes, push your branch to GitHub:

git add .  # Stage all changes
git commit -m "Added new feature"
git push origin feature-branch-name  # Push changes to GitHub

## Setup postgres

We'll be using docker and docker compose to run postgresql. Then we'll use postgresql explorer extension in vscode to run postgres directly from vscode instead of relying on pgadmin, dbeaver or similar IDEs.

### Setup
The setup contains

- environment
- docker compose
- vscode extension

### .env file
Place a .env file in the root of your repository. We will use the same postgres database with different schemas to logically group different lectures and exercises.

Your .env file should contain

POSTGRES_HOST="localhost"

POSTGRES_USER="postgres"

POSTGRES_PASSWORD="your_supersafe_password" # NOTE: change this

POSTGRES_DB="data_modeling_course_db"

POSTGRES_PORT=5432

### docker compose
Now place a docker-compose.yml file in your root also. You can take the same docker-compose.yml that is under this lecture folder.

Run

docker compose up -d

to spin up the postgres container. If it doesn't work, make sure to

- be in the correct folder where you docker-compose.yml file is
- clean up old containers and old volumes

### vscode postgres extension
Download postgreSQL by Chris Kolkman extension from the marketplace. This allows for local development directly in vscode.

Now you need to select the postgres server.

### Instructions to setup

1. Click on elephant in a cylinder symbol on the left
2. Click plus button
3. On hostname type in localhost
4. Postgres user is the same in your .env
6. Password same as in your .env
6. Port number same as in your .env
7. Choose standard connection
8. Choose your database - in our case data_modeling_course_db
9. Click enter to choose displayname

### Useful psql commands
Used in psql CLI.

command	meaning

\d	describe table

\dn	lists schemas in the database

\l	lists databases

\c	connect to a database

\dt	list all relations or tables


