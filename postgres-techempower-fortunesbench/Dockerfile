from postgres:latest

RUN apt-get update && apt-get install -y --no-install-recommends expect && rm -rf /var/lib/apt/lists/*

ADD fortunes.sql /
ADD fortunesbench.sh /

ENV PGBENCH_HOST localhost
ENV PGBENCH_THREADS 12
ENV PGBENCH_CONNECTIONS 96

CMD ["/fortunesbench.sh"]
