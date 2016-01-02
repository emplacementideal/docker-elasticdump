.PHONY: build push run usage
.DEFAULT: usage

TAG=dev

usage:
	@echo ""
	@echo "make build          Build elasticdump Docker image"
	@echo "make push           Publish elasticdump to Docker Hub"
	@echo "make run            Run elasticdump Docker image"
	@echo ""

build:
	@docker build --tag=pentimento/elasticdump:$(TAG) .

push:
	@docker push pentimento/elasticdump:$(TAG)

run:
	@docker run --rm -it pentimento/elasticdump:$(TAG) @$
