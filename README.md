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
