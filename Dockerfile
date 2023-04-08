FROM archlinux:latest

WORKDIR /src/builder
ENV PYTHON_VERSION 3.11.1

RUN pacman -Syyu
RUN pacman -S wget tar sqlite zlib openssl

RUN wget -o python.tar.xz https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tar.xz
RUN tar xJf Python-$PYTHON_VERSION.tar.xz
RUN cd $PYTHON_VERSION && ./configure && make && make install
