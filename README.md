# Countries

Some database fun around countries.

## Requirements

Docker and Docker Compose

## Installation

```
$ docker-compose build
$ docker-compose up -d
```

### Trouble Shooting
Run docker-compose up without the -d flag to see build steps:

```
$ docker-compose up
```

## Running for development

```
$ docker-compose exec countries bash
$ mix phx.server
```

Visit [http://localhost:4000](http://localhost:4000)

## Setting up Heroku
Create a new app on Heroku
* under addons, add a postgres DB
* under settings, add the following buildpacks (make sure they are in this order)
  * https://github.com/HashNuke/heroku-buildpack-elixir.git
  * https://github.com/gjaldon/heroku-buildpack-phoenix-static.git
* under settings, add a SECRET_KEY_BASE to Config vars


## Deploying to Heroku
Add heroku as a git remote
```
$ heroku git:remote -a <heroku_app_name>
```

Deploying
```
$ git push heroku --app countries master
```

You can run migrations and other mix tasks like this:
```
$ heroku run "POOL_SIZE=2 mix ecto.migrate --app countries"
```
