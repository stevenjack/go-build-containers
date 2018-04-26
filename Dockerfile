FROM vidsyhq/go-base

ADD output/go-build-containers /go-build-containers
RUN chmod u+x /go-build-containers

ENTRYPOINT ["./go-build-containers"]
