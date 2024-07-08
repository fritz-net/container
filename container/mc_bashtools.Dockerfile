# alpine image and install: mc grep sed gawk coreutils
FROM alpine:3.20.1


#RUN apt-get update && apt-get install -y grep sed gawk coreutils && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN apk update && \
    apk add --no-cache minio-client grep sed gawk coreutils && \
    rm -rf /var/cache/apk/*


ENTRYPOINT ["mc"]