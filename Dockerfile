FROM ubuntu:latest
RUN apt-get update && apt-get install wget tar -y
WORKDIR /var/application
RUN wget https://cdn.geekbench.com/Geekbench-5.4.0-Linux.tar.gz
RUN tar xf Geekbench-5.4.0-Linux.tar.gz
CMD ["/var/application/Geekbench-5.4.0-Linux/geekbench5"]