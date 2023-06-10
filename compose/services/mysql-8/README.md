# Mysql version 8.0

## Description

This service is a mysql 8.0 database.

| Service | Port  | User  | Password | Database   | Root Password |
| ------- | ----- | ----- | -------- | ---------- | ------------- |
| mysql-8 | 10208 | mysql | password | mysql      | root          |
| ------- | ----  | ----  | -------- | ---------- | ------------- |

## Basic usage

- Run the service

```bash
app mysql-8 up -d
```

- Stop the service

```bash
app mysql-8 down
```

- Stop the service and remove all data

```bash
app mysql-8 down -v
```

- Check the status of the service

```bash
app mysql-8 ps
```

- Restart service

```bash
app mysql-8 restart
```

- Check the logs of the service

```bash
app mysql-8 logs
```

- Check the logs of the service with follow mode

```bash
app mysql-8 logs -f
```

- Check the logs of the service with follow mode and limit the number of lines

```bash
app mysql-8 logs -f --tail=10
```

## Advanced usage

- Rebuild the service and force recreate container

```bash
app mysql-8 up -d --build --force-recreate
```

- Check the logs of the service with follow mode and limit the number of lines and show timestamps

```bash
app mysql-8 logs -f --tail=10 --timestamps
```

- Check the logs of the service with follow mode and limit the number of lines and show timestamps and show service name and show service name

```bash
app mysql-8 logs -f --tail=10 --timestamps --service --no-color
```

## Notes

If you are using this without suger coated `app` script then you need to use `docker-compose` command instead of `app mysql-8` command.

```bash
docker-compose up -d
```
