FROM ubuntu
RUN apt update -y && apt install -y git
RUN git clone https://gitlab.com/HenryKautz/BlackBox.git
RUN cd BlackBox && make && make install
CMD ["blackbox"]
