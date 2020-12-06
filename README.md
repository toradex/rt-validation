# rt-validation

Containers to validate real-time (PREEMPT_RT) support in TorizonCore


# Build containers (on target machine)

For armhf:
```
docker build -t torizon/rt-validation-stress stress-tests
docker build -t torizon/rt-validation-rt rt-tests
```

For arm64:
```
docker build --build-arg IMAGE_ARCH=linux/arm64 -t torizon/rt-validation-stress stress-tests
docker build --build-arg IMAGE_ARCH=linux/arm64 -t torizon/rt-validation-rt rt-tests
```


# Run the tests (on target machine)

docker run --rm -it --privileged -v /dev:/dev -v /tmp:/tmp -v /media/$USER/YOUR-USB-DISK-MOUNTPOINT:/mnt/pendrive torizon/rt-validation-stress
docker run --rm -it --privileged -v /dev:/dev -v /tmp:/tmp torizon/rt-validation-rt
