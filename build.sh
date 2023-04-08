# /bin/bash
PYTHON_VERSION=3.11.1

mkdir /tmp/python
cd /tmp/python
wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tar.xz
tar xJf Python-$PYTHON_VERSION.tar.xz
cd Python-$PYTHON_VERSION
./configure --enable-optimizations
make
make install
cd /
rm -rf /tmp/python