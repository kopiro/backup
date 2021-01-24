# kopiro/backup

Docker image that will gzip your data and send them to Amazon S3 Glacier; as simple as possible, periodically.

```yaml
version: 3
services:
  backup:
    image: kopiro/backup
    environment:
      - AWS_ACCESS_KEY_ID=
      - AWS_SECRET_ACCESS_KEY=
      - BACKUP_BUCKET_NAME=
      - BACKUP_NAME=
      - BACKUP_CRON_SCHEDULE="0 4 * * 0"
    volumes:
      - /your/dir/to/backup:/data
```

## time-off backup

If you want to run a one-shot backup, do:

```sh
docker-compose exec -it backup run
```

### testing locally

```sh
docker-compose up --build -d
```
