FROM alpine
RUN apt-get update && apt-get install blackbox
CMD ["blackbox"]
