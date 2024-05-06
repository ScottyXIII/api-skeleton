# API skeleton
An api skeleton using Symfony's API platform.

- Nginx webserver
- PHP
- MYSQL database.

To spin up the service run 

```docker compose up -d```

This will spin up 3 containers: 
- db - MYSQL database exposed on port 3306
- web - NGINX webserver exposed on port 8021 
- app - PHP application with api platform pre-installed
  
Web app can be accesed via [http://localhost:8021](http://localhost:8021)

API - [http://localhost:8021/api](http://localhost:8021/api)

Ports can be configured in `/.env`

## Adding new Enpoints to the API

You can generate endpoints using the maker bundle

`bin/console make:entity --api-resource`

or create your own entity in `Src/Entity` entities are mapped with [Doctrine ORM](https://www.doctrine-project.org/projects/doctrine-orm/en/latest/reference/association-mapping.html)

## DB Migrations
To persist entities into the DB we need to create a database migration with any changes made and apply it.

`bin/console doctrine:migrations:diff` 

`php bin/console doctrine:migrations:migrate` 
