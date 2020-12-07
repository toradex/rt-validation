ARG IMAGE_ARCH=linux/arm
# For IMX8 use IMAGE_ARCH=linux/arm64
ARG IMAGE_TAG=1-buster
FROM --platform=$IMAGE_ARCH torizon/debian:$IMAGE_TAG

RUN apt-get update \
    && apt-get install -y --no-install-recommends rt-tests \
    && rm -rf /var/lib/apt/lists/*

CMD ["cyclictest","-S","-p99","-i1000","-m","-D20m", "-q", "|", "tee", "cyclictest.log"]
