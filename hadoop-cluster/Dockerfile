FROM kiwenlau/hadoop:1.0

#Enable SSH by dafault
RUN update-rc.d ssh defaults

COPY ./start-hadoop-master.sh ~/start-hadoop.sh

CMD [ "sh", "-c", "/root/start-hadoop.sh"]