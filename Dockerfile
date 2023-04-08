FROM archlinux:latest

ENV LANG C.UTF-8

RUN pacman -Syyu --noconfirm
RUN pacman --noconfirm -S wget tar sqlite zlib openssl gcc make

COPY ./build.sh .
RUN bash build.sh
RUN rm build.sh

CMD ["python3"]