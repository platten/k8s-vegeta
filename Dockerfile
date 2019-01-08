FROM alpine

ENV URL http://loadws-service:8080/
ENV CONNECTIONS 100
ENV REPORT_INTERVAL 1s

ADD wrapper.sh /wrapper.sh
RUN wget https://github.com/tsenart/vegeta/releases/download/cli%2Fv12.2.0/vegeta-12.2.0-linux-amd64.tar.gz; \
    tar -zxvf vegeta-12.2.0-linux-amd64.tar.gz; \
    mv vegeta /usr/bin/vegeta; \
    rm  CHANGELOG LICENSE README.md vegeta-12.2.0-linux-amd64.tar.gz

CMD /wrapper.sh
