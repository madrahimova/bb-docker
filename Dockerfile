FROM alpine
RUN apt update -y && apt install -y blackbox
CMD ["blackbox"]
