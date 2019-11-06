FROM grafana/grafana:6.4.4
USER root
COPY heroku_run.sh /heroku_run.sh
RUN chmod +x /heroku_run.sh

USER grafana
ENTRYPOINT ["/heroku_run.sh"]
