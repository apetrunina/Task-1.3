FROM postgres:latest
ENV POSTGRES_PASSWORD=secret
ENV POSTGRES_USER=username
ENV POSTGRES_DB=database
VOLUME /var/lib/postgresql/data
COPY init_scripts/init.sql /docker-entrypoint-initdb.d/init.sql