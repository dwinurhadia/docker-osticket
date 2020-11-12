# docker-osticket

docker project 🐳 for deploy customer support ticket system

version os ticket 1.14.3

## Get project


```bash
git clone https://github.com/dwinurhadia/docker-osticket.git
```

## Start services

Build system

```
docker-compose build
```

then running with 

```bash
docker-compose up -d
```

## After install

```bash
$ docker exec -it docker-osticket_osticket_1 chmod 0644 /var/www/localhost/htdocs/include/ost-config.php

$ docker exec -it docker-osticket_osticket_1 rm -rf /var/www/localhost/htdocs/setup
```

## Removes services

```bash
docker-compose down
```

### thanks to
https://github.com/clementlecorre/docker-osticket`
