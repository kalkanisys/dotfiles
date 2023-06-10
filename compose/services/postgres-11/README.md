# Pogstres 11

## Description

This service is a postgres 11 database.

| Service     | Port  | User     | Password | Database   |
| ----------- | ----- | -------- | -------- | ---------- |
| postgres-11 | 10011 | postgres | postgres | postgres   |
| -------     | ----  | ----     | -------- | ---------- |

## Basic usage

- Run the service

```bash
app postgres-11 up -d
```

- Stop the service

```bash
app postgres-11 down
```

- Stop the service and remove all data

```bash
app postgres-11 down -v
```

- Check the status of the service

```bash
app postgres-11 ps
```

- Restart service

```bash
app postgres-11 restart
```

- Check the logs of the service

```bash
app postgres-11 logs
```

- Check the logs of the service with follow mode

```bash
app postgres-11 logs -f
```

- Check the logs of the service with follow mode and limit the number of lines

```bash
app postgres-11 logs -f --tail=10
```

## Advanced usage

- Rebuild the service and force recreate container

```bash
app postgres-11 up -d --build --force-recreate
```

- Check the logs of the service with follow mode and limit the number of lines and show timestamps

```bash
app postgres-11 logs -f --tail=10 --timestamps
```

- Check the logs of the service with follow mode and limit the number of lines and show timestamps and show service name and show service name

```bash
app postgres-11 logs -f --tail=10 --timestamps --service --no-color
```

## Notes

If you are using this without suger coated `app` script then you need to use `docker-compose` command instead of `app postgres-11` command.

```bash
docker-compose up -d
```
