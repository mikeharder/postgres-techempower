#!/usr/bin/expect -f

set timeout 20

spawn pgbench -h $env(PGBENCH_HOST) -U benchmarkdbuser -T 10 -n -M prepared -f fortunes.sql -j $env(PGBENCH_THREADS) -c $env(PGBENCH_CONNECTIONS) hello_world
expect "Password:" {send "benchmarkdbpass\r"}
interact
