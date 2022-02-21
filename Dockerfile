FROM alpine
RUN apt-get update -y && apt-get install -y blackbox
CMD ["blackbox"]
