FROM alpine:3.7

ADD crontab.txt /crontab.txt
ADD script.sh /script.sh
COPY entry.sh /entry.sh
RUN chmod 755 /script.sh /entry.sh
RUN /usr/bin/crontab /crontab.txt

# Use docker run --init minicron for proper process reaping 
# and graceful shutdowns
CMD ["/entry.sh"]