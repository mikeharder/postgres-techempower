FROM postgres

RUN apt-get update && apt-get install -y --no-install-recommends expect && rm -rf /var/lib/apt/lists/*

ADD fortunesbench.sh /
RUN chmod +x /fortunesbench.sh

ADD fortunes.sql /

ENV PGBENCH_HOST localhost
ENV PGBENCH_DURATION 10
ENV PGBENCH_THREADS 12
ENV PGBENCH_CONNECTIONS 96
ENV PGBENCH_QUERYMODE prepared

CMD ["/fortunesbench.sh"]
