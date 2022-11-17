PHONY: pytest
pytest:
	docker-compose build
	docker-compose up -d
	docker exec -it pytest_ubuntu bash
	# python -m pytest -v tests/pytest/src/tests/app

PHONY: robot
robot:
	docker-compose build robot_ubuntu
	docker-compose up -d robot_ubuntu
	docker-compose exec robot_ubuntu bash

PHONY: pytest-docker
pytest-docker:
	DOCKER_BUILDKIT=1 docker build -t pytest_ubuntu:1.0 -f ./dockerfiles/Dockerfile.ubuntu.pytest .
	docker run -it --name pytest_ubuntu -v ${CURDIR}/src:/opt pytest_ubuntu:1.0 bash

PHONY: js-docker
js-docker:
	DOCKER_BUILDKIT=1 docker build -t js_ubuntu:1.0 -f ./dockerfiles/Dockerfile.ubuntu.js .
	docker run -it --name js_ubuntu -v ${CURDIR}/src:/opt js_ubuntu:1.0 bash

containers = $(docker ps -aq)

PHONY: cleandocker
cleandocker:
	docker-compose down
	docker-compose stop
	docker container prune
	docker volume prune
	docker network prune
	docker system prune
