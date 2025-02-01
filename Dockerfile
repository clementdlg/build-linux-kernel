FROM debian:12.9-slim

RUN apt update && \
	apt install flex bison make wget xz-utils libelf-dev build-essential libncurses-dev bc fakeroot git libssl-dev -y

WORKDIR /build
COPY config .
COPY build-kernel .

RUN chmod 755 build-kernel

ENTRYPOINT [ "./build-kernel" ]

CMD [ "" ]
