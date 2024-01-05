# playground
playground

```
docker run --rm -ti -v .:/app ruby:3.2.2-alpine sh
```

win
```
docker run --rm -ti -v "$(pwd):/app" ruby:3.2.2-alpine sh
```

```
apk update
```

```
apk add git g++ make mysql-dev
```

```
gem update --system
```

```
gem install rails -v 7.0.6
```

```
rails new app --database=mysql --skip-bundle --skip-test
```

Create Dockerfile
Create docker-compose.yml

```
docker compose build
```

```
docker image ls
```

```
docker compose up
```

```
docker compose ps
```

```
docker compose exec web rails db:create
```

うまくいかなかったら
```
docker-compose down --rmi all --volumes --remove-orhans
docker compose build
```

```
docker compose run web bundle install
```