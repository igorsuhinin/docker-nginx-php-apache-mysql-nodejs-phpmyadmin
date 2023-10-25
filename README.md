nginx + PHP-FPM + Apache + MySQL + NodeJS + phpMyAdmin with Docker-Compose
==========================================================================

Initial configuration to install a web environment with the following images:

- nginx: reverse-proxy for Apache and PhpMyAdmin
- PHP-FPM 8.2 with `composer`
- Apache (httpd): as a proxy for requests to PHP-FPM
- MySQL 8: default access credentials are defined in `.env` file
- NodeJS 21
- phpMyAdmin 5.2: it will be available on the port `81`, e.g. `http://localhost:81`

## Installation

### Prerequisites

- Docker 24.0
- Docker Compose 2.22

### Build and Run

1. Run `make build` to build the Docker images
2. Run `make up` to run the Docker containers

All the commands above can be run with one command:

```
make build && make up
```

As a result, the application will be available at http://localhost/.

### Stopping the Application

To stop the application, run `make down`.