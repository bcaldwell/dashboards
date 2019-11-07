#!/bin/bash

export GF_SERVER_HTTP_PORT=$PORT
export GF_DATABASE_URL=$GRAFANA_DATABASE_URL

if [[ $DATABASE_URL =~ ^postgres://(.+):(.+)@(.+)/(.+)$ ]]; then
    export DATABASE_USER=${BASH_REMATCH[1]}
    export DATABASE_PASSWORD=${BASH_REMATCH[2]}
    export DATABASE_URL=${BASH_REMATCH[3]}
    export DATABASE_DB=${BASH_REMATCH[4]}
fi

echo "Starting grafana on port $GF_SERVER_HTTP_PORT"
/run.sh
