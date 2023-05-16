FROM alpine:3.16

RUN apk update && apk add postgresql

ENV POSTGRES_USER user
ENV POSTGRES_PASSWORD pwd
ENV POSTGRES_DB app


RUN mkdir /run/postgresql && chown -R postgres:postgres /run/postgresql && \
    mkdir /var/lib/postgresql/data && chown -R postgres:postgres /var/lib/postgresql/data

USER postgres

RUN initdb -D /var/lib/postgresql/data

CMD ["postgres", "-D", "/var/lib/postgresql/data"]