FROM influxdb:1.3.1-alpine

MAINTAINER halit <hozdemir>

WORKDIR /app
COPY entrypoint.sh ./
RUN chmod u+x entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
