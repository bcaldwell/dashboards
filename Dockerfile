FROM grafana/grafana:6.4.4
USER root
COPY heroku_run.sh /heroku_run.sh
RUN chmod +x /heroku_run.sh

USER grafana

COPY datasources /etc/grafana/provisioning/datasources/
# COPY dashboards.yml /etc/grafana/provisioning/dashboards/
# COPY dashboards /etc/grafana/dashboards/

ENTRYPOINT ["/heroku_run.sh"]
