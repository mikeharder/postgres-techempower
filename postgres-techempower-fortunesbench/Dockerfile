from postgres:latest

ADD fortunes.sql /

ENV PGBENCH_HOST localhost
ENV PGBENCH_THREADS 12
ENV PGBENCH_CONNECTIONS 96

CMD pgbench -h $PGBENCH_HOST -U benchmarkdbuser -T 10 -n -M prepared -f fortunes.sql -j $PGBENCH_THREADS -c $PGBENCH_CONNECTIONS hello_world
