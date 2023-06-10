# Mysql version 5.7

## Description

This service is a mysql 5.7 database.

| Service | Port  | User  | Password | Database   | Root Password |
| ------- | ----- | ----- | -------- | ---------- | ------------- |
| mysql-5 | 10205 | mysql | password | mysql      | root          |
| ------- | ----  | ----  | -------- | ---------- | ------------- |

## Basic usage

- Run the service

```bash
app mysql-5 up -d
```

- Stop the service

```bash
app mysql-5 down
```

- Stop the service and remove all data

```bash
app mysql-5 down -v
```

- Check the status of the service

```bash
app mysql-5 ps
```

- Restart service

```bash
app mysql-5 restart
```

- Check the logs of the service

```bash
app mysql-5 logs
```

- Check the logs of the service with follow mode

```bash
app mysql-5 logs -f
```

- Check the logs of the service with follow mode and limit the number of lines

```bash
app mysql-5 logs -f --tail=10
```

## Advanced usage

- Rebuild the service and force recreate container

```bash
app mysql-5 up -d --build --force-recreate
```

- Check the logs of the service with follow mode and limit the number of lines and show timestamps

```bash
app mysql-5 logs -f --tail=10 --timestamps
```

- Check the logs of the service with follow mode and limit the number of lines and show timestamps and show service name and show service name

```bash
app mysql-5 logs -f --tail=10 --timestamps --service --no-color
```

## Notes

If you are using this without suger coated `app` script then you need to use `docker-compose` command instead of `app mysql-5` command.

```bash
docker-compose up -d
```
