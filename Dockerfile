FROM debian:12.9-slim

RUN apt update && apt install make wget xz-utils -y

WORKDIR /build
COPY build-kernel .

RUN chmod 755 build-kernel

ENTRYPOINT [ "./build-kernel" ]

CMD [ "" ]
