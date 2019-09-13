Nginx + Php-fpm + Apache + MySQL + NodeJS + phpMyAdmin with Docker-Compose 
==========================================================================

Initial configuration to install a web environment with the following images:

- nginx: it will be running as a reverse-proxy for Apache; the static data (images, texts, js scripts, etc) will be 
returned by nginx itself
- Php-fpm 7.2: it will install `composer` and try to run it with `composer install`
- Apache (httpd): it will be proxying the requests to PHP-FPM
- MySQL 8: default access credentials are defined in `.env` file incl. the root password
- NodeJS: will try to run `npm run dev` or `npm run dev` depending on the settings defined in `.env` file
- phpMyAdmin: it will be available on the port `5426`, e.g. `http://localhost:5426`

## Prerequisites

Please make sure docker & docker-compose are installed on the target machine. 

If you are not sure, please run the following command (Ubuntu):
 
```
sudo apt-get install docker docker-compose -y
```

## Initial Settings

Navigate to the root directory and open `.env` file for editing:
 
```
# App Settings
APP_NAME=docker
APP_PATH=./app
# To launch the app in dev environment just remove prod
APP_ENV=prod
```

## Run Docker-Compose

To build the images and run the configuration please navigate to the root directory and run the following command 

```
docker-compose up -d --build
```

Remove option `-d` if you don't want to run it in the detached mode.

If the images are already built just run the following command

```
docker-compose up -d
```

Docker Management
-----------------

### Start Docker containers

When the containers are built you can start the containers by using the following command

`docker-compose up`  OR `docker-compose up -d` for the _detached_ mode.

### Stop Docker containers

To stop Docker containers you can use the following command

`docker-compose down`

### Log in to Containers

To log in to the container you can use one of the following commands

 - NGINX: `docker-compose exec web sh`
 
 - PHP: `docker-compose exec php sh`
 
 - APACHE: `docker-compose exec apache sh`
 
 - MYSQL: `docker-compose exec db sh`
 
 - NODEJS: `docker-compose exec nodejs sh`
 
 - PHPMYADMIN: `docker-compose exec phpmyadmin sh`

### Troubleshooting

- Docker can't run the container on the default port `80`: Please check if there is no other app which uses the same 
port on your machine. You can also change the default port for `nginx` in the file `docker-compose.yml`.
- Can't log in to `php` container: Please check all running Docker processes by using the following command 
`docker-compose ps`. Check if you are using the correct name.