# API Skeleton
An api skeleton using Symfony's API platform.

- Nginx webserver
- PHP
- MYSQL database.

# Prerequisites

download Docker Desktop for your OS
https://www.docker.com/products/docker-desktop/

clone this repository in your terminal

`git clone https://github.com/ScottyXIII/api-skeleton.git`

or [click here](https://github.com/ScottyXIII/api-skeleton/archive/refs/heads/master.zip) to download the project manually 

navigate into the api-skeleton project from your terminal 

`cd ${YOUR_PATH}/api-skeleton` 

spin up the service running 

```docker compose up -d```

you now have a running API on your local machine!

You can access the api via
API - [http://localhost:8021/api](http://localhost:8021)

This will spin up 3 containers: 
- db - MYSQL database exposed on port 3306
- web - NGINX webserver exposed on port 8021 
- app - PHP application with api platform pre-installed
  


Ports can be configured in `/.env`

## Adding new Enpoints to the API

You can generate endpoints using the maker bundle

`bin/console make:entity --api-resource`

or create your own entity in `Src/Entity` entities are mapped with [Doctrine ORM](https://www.doctrine-project.org/projects/doctrine-orm/en/latest/reference/association-mapping.html)

## DB Migrations
To persist entities into the DB we need to create a database migration with any changes made and apply it.

`bin/console doctrine:migrations:diff` 

`php bin/console doctrine:migrations:migrate` 
