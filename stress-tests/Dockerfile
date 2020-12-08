ARG IMAGE_ARCH=linux/arm
# For IMX8 use IMAGE_ARCH=linux/arm64
ARG IMAGE_TAG=2-bullseye
FROM --platform=$IMAGE_ARCH torizon/debian:$IMAGE_TAG

RUN apt-get update \
    && apt-get install -y --no-install-recommends iperf3 rt-tests \
    && rm -rf /var/lib/apt/lists/*

COPY / /

CMD ["/stress-tests.sh"]
