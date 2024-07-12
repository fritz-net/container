# alpine image and install: mc grep sed gawk coreutils
FROM alpine:3.20.1


#RUN apt-get update && apt-get install -y grep sed gawk coreutils && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN apk update && \
    apk add --no-cache minio-client grep sed gawk coreutils && \
    # 7z
    apk add --no-cache p7zip && \
    rm -rf /var/cache/apk/*

# create alias for minio-client to mc
RUN ln -s /usr/bin/mcli /usr/bin/mc

ENTRYPOINT ["mc"]