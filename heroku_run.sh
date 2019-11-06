#!/bin/bash

export GF_SERVER_HTTP_PORT=$PORT
export GF_DATABASE_URL=$GRAFANA_DATABASE_URL

echo "Starting grafana on port $GF_SERVER_HTTP_PORT"
/run.sh
