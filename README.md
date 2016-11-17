# postgres-techempower

## Server
```
cd postgres-techempower
docker build -t postgres-techempower .
docker run -p 5432:5432 --name postgres-techempower -d postgres-techempower
```

## Client
```
cd postgres-techempower-fortunesbench
docker build -t postgres-techempower-fortunesbench .
docker run -it --rm -e PGBENCH_HOST=server-name-or-ip postgres-techempower-fortunesbench
```
