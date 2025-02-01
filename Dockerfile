FROM debian:12.9-slim

RUN apt update && \
	apt install wget xz-utils make gcc flex bison libelf-dev bc libssl-dev kmod -y && \
	apt clean

WORKDIR /build

COPY config .
COPY build-kernel .
RUN chmod 755 build-kernel

ENTRYPOINT [ "./build-kernel" ]

CMD [ "" ]
