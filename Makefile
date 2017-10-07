#
# Makefile for dreadlabs/php-lib-*
#
# @see http://www.itnotes.de/docker/development/tools/2014/08/31/speed-up-your-docker-workflow-with-a-makefile/
# @see http://stackoverflow.com/a/10858332
#

VERSION ?= latest
CONTEXT ?= base
NS = dreadlabs
FILE = Dockerfile


REPO = php-lib-$(CONTEXT)
NAME = php-lib-$(CONTEXT)
INSTANCE = default

.PHONY: build shell release versions start stop rm

build:
	docker build --file $(CONTEXT)/$(FILE) -t $(NS)/$(REPO):$(VERSION) $(CONTEXT)

push:
	docker push $(NS)/$(REPO):$(VERSION)

shell:
	docker run --rm --name $(NAME)-$(INSTANCE) --interactive --tty $(NS)/$(REPO):$(VERSION) /bin/bash

start:
	docker run -d --name $(NAME)-$(INSTANCE) $(NS)/$(REPO):$(VERSION)

stop:
	docker stop $(NAME)-$(INSTANCE)

rm:
	docker rm $(NAME)-$(INSTANCE)

release:
	make push -e VERSION=$(VERSION)

versions:
	docker images | grep $(NS)/$(REPO)

default: build
