#!/usr/bin/expect -f

set timeout [expr $env(PGBENCH_TIME) * 2]

spawn pgbench -h $env(PGBENCH_HOST) -U benchmarkdbuser -T $env(PGBENCH_TIME) -n -M $env(PGBENCH_MODE) -f fortunes.sql -j $env(PGBENCH_THREADS) -c $env(PGBENCH_CONNECTIONS) hello_world
expect "Password:" {send "benchmarkdbpass\r"}
interact
