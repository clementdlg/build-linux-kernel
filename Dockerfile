FROM alpine:3.21

RUN apk update && \
	apk add --no-cache wget make gcc flex bison elfutils-dev bc libressl-dev kmod bash libc-dev linux-headers diffutils findutils perl && \
	rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

WORKDIR /build

COPY build-kernel .
RUN chmod 755 build-kernel

ENTRYPOINT [ "./build-kernel" ]

CMD [ "6.6.74" ]
