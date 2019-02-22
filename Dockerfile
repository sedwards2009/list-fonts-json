FROM debian:jessie

RUN apt-get update && apt-get install -y --no-install-recommends g++ cmake make libfontconfig1-dev

WORKDIR /source
VOLUME /source

CMD cd /source \
    && mkdir build \
    && cd build \
    && cmake -DCMAKE_BUILD_TYPE=Release .. \
    && make \
    && echo "--------------- DONE ------------------"
