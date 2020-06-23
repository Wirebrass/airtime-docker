FROM nemosupinfo/airtime-okvic77:latest

LABEL maintainer="305903@supinfo.com"

# Change log level DEBUG to INFO
RUN sed -i 's/DEBUG/INFO/g' /etc/airtime/*

# Bug fix
RUN sed -i 's|/usr/lib/airtime/pypo/bin/liquidsoap_scripts/liquidsoap_auth.py|/usr/local/lib/python2.7/dist-packages/airtime_playout-1.0-py2.7.egg/liquidsoap/liquidsoap_auth.py|' /usr/local/lib/python2.7/dist-packages/airtime_playout-1.0-py2.7.egg/liquidsoap/ls_script.liq

# Disable Icecast2 launch
COPY alone.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80 8001

CMD ["/usr/bin/supervisord"]
