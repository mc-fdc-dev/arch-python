FROM archlinux:latest

ENV LANG C.UTF-8

RUN pacman -Syyu --noconfirm
RUN pacman --noconfirm -S wget tar sqlite zlib openssl gcc make

RUN wget -o python.tar.xz https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tar.xz
RUN tar xJf Python-$PYTHON_VERSION.tar.xz
RUN cd Python-$PYTHON_VERSION && ./configure --enable-optimizations && make && make install