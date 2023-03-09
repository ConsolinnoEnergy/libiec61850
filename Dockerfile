ARG AARCH=arm32v7
FROM ${AARCH}/debian:buster-slim
RUN apt-get update && apt-get install build-essential cmake --no-install-recommends -y
WORKDIR /build

# prepare:
# export AARCH=arm32v7

# build:
# export AARCH=arm32v7 && docker build -t project/cross-compile . --build-arg AARCH=$AARCH

# Usage:
# export AARCH=arm32v7 && docker run -v ${PWD}/build-$AARCH:/build -v ${PWD}:/project -ti --rm project/cross-compile bash -c "cd /build && cmake ../project && cmake --build . -j 8 && cpack && exit"
