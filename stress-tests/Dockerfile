ARG IMAGE_ARCH=linux/arm
# For IMX8 use IMAGE_ARCH=linux/arm64
ARG IMAGE_TAG=2-bullseye
FROM --platform=$IMAGE_ARCH torizon/debian:$IMAGE_TAG

RUN apt update \
    && apt install -y --no-install-recommends iperf3 rt-tests iputils-ping iproute2 \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

COPY stress-tests.sh /stress-tests.sh

CMD ["/stress-tests.sh"]
