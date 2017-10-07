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


REPO = php-lib
NAME = php-lib
INSTANCE = default

.PHONY: build shell release versions start stop rm

build:
	docker build --file $(CONTEXT)/$(FILE) -t $(NS)/$(REPO):$(VERSION)-$(CONTEXT) $(CONTEXT)

push:
	docker push $(NS)/$(REPO):$(VERSION)

shell:
	docker run --rm --name $(NAME)-$(CONTEXT)-$(INSTANCE) --interactive --tty $(NS)/$(REPO):$(VERSION)-$(CONTEXT) /bin/bash

start:
	docker run -d --name $(NAME)-$(CONTEXT)-$(INSTANCE) $(NS)/$(REPO):$(VERSION)-$(CONTEXT)

stop:
	docker stop $(NAME)-$(CONTEXT)-$(INSTANCE)

rm:
	docker rm $(NAME)-$(CONTEXT)-$(INSTANCE)

release:
	make push -e VERSION=$(VERSION)

versions:
	docker images | grep $(NS)/$(REPO)

default: build
