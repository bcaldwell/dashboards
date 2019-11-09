FROM benjamincaldwell/selfops AS selfops

# waiting for 6.5 release for allowUiUpdates flag
FROM grafana/grafana:latest

COPY --from=selfops /selfops/selfops /importer

USER root
COPY heroku_run.sh /heroku_run.sh
RUN chmod +x /heroku_run.sh

USER grafana

COPY provisioning/datasources /etc/grafana/provisioning/datasources/
COPY provisioning/dashboards.yml /etc/grafana/provisioning/dashboards/
COPY provisioning/dashboards /etc/grafana/dashboards/

ENTRYPOINT []
CMD ["/heroku_run.sh"]
