# Redis version 7.0

## Description

This service is a Redis 7.0.

| Service | Port  |
| ------- | ----- |
| redis-8 | 10307 |
| ------- | ----  |

## Basic usage

- Run the service

```bash
app redis-7 up -d
```

- Stop the service

```bash
app redis-7 down
```

- Stop the service and remove all data

```bash
app redis-7 down -v
```

- Check the status of the service

```bash
app redis-7 ps
```

- Restart service

```bash
app redis-7 restart
```

- Check the logs of the service

```bash
app redis-7 logs
```

- Check the logs of the service with follow mode

```bash
app redis-7 logs -f
```

- Check the logs of the service with follow mode and limit the number of lines

```bash
app redis-7 logs -f --tail=10
```

## Advanced usage

- Rebuild the service and force recreate container

```bash
app redis-7 up -d --build --force-recreate
```

- Check the logs of the service with follow mode and limit the number of lines and show timestamps

```bash
app redis-7 logs -f --tail=10 --timestamps
```

- Check the logs of the service with follow mode and limit the number of lines and show timestamps and show service name and show service name

```bash
app redis-7 logs -f --tail=10 --timestamps --service --no-color
```

## Notes

If you are using this without suger coated `app` script then you need to use `docker-compose` command instead of `app redis-7` command.

```bash
docker-compose up -d
```
