none:
	@echo ""

all: login build tag push

test:
	docker run --name webserver-test -p 8080:80 --rm 620241740192.dkr.ecr.eu-west-2.amazonaws.com/ecs-imagen:latest 
test-kill:
	docker kill webserver-test 
login:
	aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin 620241740192.dkr.ecr.eu-west-2.amazonaws.com

build:
	docker build -t ecs-imagen .
tag:
	docker tag ecs-imagen:latest 620241740192.dkr.ecr.eu-west-2.amazonaws.com/ecs-imagen:latest
push:
	docker push 620241740192.dkr.ecr.eu-west-2.amazonaws.com/ecs-imagen:latest
