FROM archlinux:latest

ENV LANG C.UTF-8

RUN pacman -Syyu --noconfirm
RUN pacman --noconfirm -S wget tar sqlite zlib openssl gcc make

ENV PYTHON_VERSION 3.11.5

RUN mkdir /tmp/python && \
  cd /tmp/python && \
  wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tar.xz && \
  tar xJf Python-$PYTHON_VERSION.tar.xz && \
  cd Python-$PYTHON_VERSION && \
  ./configure --enable-optimizations && \
  make && \
  make install && \
  rm -rf /tmp/python

CMD ["python3"]
