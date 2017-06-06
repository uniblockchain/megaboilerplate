## boilerplate

#### setup

```bash
$ docker-compose build
```

You need an `.env` file at the root of the repo with the following:

```
MAILGUN_USERNAME=XXX
MAILGUN_PASSWORD=XXX
DB_HOST=postgres
DB_USER=mega
DB_PASSWORD=mega
DB_NAME=mega
TOKEN_SECRET=XXX
GOOGLE_SECRET=XXX
GITHUB_SECRET=XXX
```


#### start

```bash
$ docker-compose up
```

If you want to restart the app server without restarting postgres:

```bash
$ MANUALRUN=1 docker-compose up -d
$ docker exec -ti mega_app bash
$ npm run start
```

Now you can ctrl+c and restart the app...

Once you have finished:

```bash
$ exit
$ docker-compose stop
$ docker rm -f $(docker ps -aq)
```

#### database

To reset the local database:

```bash
$ rm -rf .data
```
