FROM jasonish/suricata:latest

RUN dnf -y update
RUN dnf -y install cronie

COPY ./logrotate /etc/cron.d/logrotate
RUN chmod 0644 /etc/cron.d/logrotate

COPY ./suricata-update /etc/cron.d/suricata-update
RUN chmod 0644 /etc/cron.d/suricata-update

COPY ./start.sh /start.sh
RUN chmod 0744 /start.sh

ENTRYPOINT ["/start.sh"]
