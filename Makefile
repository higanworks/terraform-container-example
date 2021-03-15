.PHONY: build up

build:
	docker build -t terraform-cli:latest .

up: build
	docker run --rm -it -v `pwd`/src:/mnt/workdir -v `pwd`/.tfenv/versions:/root/.tfenv/versions  terraform-cli:latest
