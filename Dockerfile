FROM nemosupinfo/airtime-okvic77:latest

LABEL maintainer="305903@supinfo.com"

# Change log level DEBUG to INFO
RUN sed -i 's/DEBUG/INFO/g' /etc/airtime/*

# Disable Icecast2 launch
COPY alone.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80 8001

CMD ["/usr/bin/supervisord"]
