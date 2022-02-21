FROM debian
ADD bin/blackbox /bin
ENTRYPOINT ["blackbox"]
