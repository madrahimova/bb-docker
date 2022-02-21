FROM dorowu/ubuntu-desktop-lxde-vnc
RUN apt-get update && apt-get install blackbox
CMD ["blackbox"]