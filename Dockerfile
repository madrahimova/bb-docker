FROM ubuntu
RUN apt update -y && apt install -y git make
RUN git clone https://gitlab.com/HenryKautz/BlackBox.git
RUN cd BlackBox && make && make install
RUN cd .. && rm -rf BlackBox
CMD ["blackbox"]
