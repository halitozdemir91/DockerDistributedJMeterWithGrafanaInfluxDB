#!/usr/bin/env sh

url="http://$GF_SECURITY_ADMIN_USER:$GF_SECURITY_ADMIN_PASSWORD@localhost:3000"

post() {
    curl -s -X POST -d "$1" \
        -H 'Content-Type: application/json;charset=UTF-8' \
        "$url$2" 2> /dev/null
}

# if grafana volume does no exist this code create new datasources in volume
if [ ! -f "/var/lib/grafana/.init" ]; then
    exec /run.sh $@ &

    until curl -s "$url/api/datasources" 2> /dev/null; do
        sleep 1
    done

    for datasource in /etc/grafana/provisioning/datasources/*; do
        post "$(envsubst < $datasource)" "/api/datasources"
    done

    touch "/var/lib/grafana/.init"

    kill $(pgrep grafana)
fi

exec /run.sh $@
