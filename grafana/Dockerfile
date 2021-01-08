FROM grafana/grafana:4.4.2

MAINTAINER halit <hozdemir>

RUN apt-get update && apt-get install -y curl gettext-base && rm -rf /var/lib/apt/lists/*

ADD ./provisioning /etc/grafana/provisioning
ADD ./dashboards /var/lib/dashboards

WORKDIR /app
COPY entrypoint.sh ./
RUN chmod u+x entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
