build:
	@echo "=> Building binary"
	@docker run \
		--rm=true \
		-v "${PWD}":/go/src/github.com/stevenjack/go-build-containers \
		-v "${PWD}":/output -w /go/src/github.com/stevenjack/go-build-containers \
		golang:1.9.1-alpine go build -i -o ./output/go-build-containers main.go
	@echo "=> Binary is now in output/"

clean:
	@echo "=> Cleaning up build artifacts"
	@docker-compose stop
	@docker-compose rm -f
	@rm -rf output/go-build-containers

run-cluster: clean build
	@echo "=> Starting cluster"
	@docker-compose up -d
	@echo "=> Started cluster, tailing logs:"
	@docker-compose logs -f

