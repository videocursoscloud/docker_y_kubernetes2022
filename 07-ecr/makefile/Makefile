none:
	@echo ""

all: login build tag push

login:
	aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin 620241740192.dkr.ecr.eu-west-2.amazonaws.com

build:
	docker build -t makefiles .
tag:
	docker tag makefiles:latest 620241740192.dkr.ecr.eu-west-2.amazonaws.com/makefiles:latest
push:
	docker push 620241740192.dkr.ecr.eu-west-2.amazonaws.com/makefiles:latest
