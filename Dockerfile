FROM debian
WORKDIR /bin
COPY bin/blackbox /bin
RUN chmod +x /bin/blackbox
ENTRYPOINT ["blackbox"]
