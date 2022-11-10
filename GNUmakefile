PHONY: pytest
pytest:
	docker-compose build
	docker-compose up -d
	docker exec -it pytest_ubuntu bash
	# python -m pytest -v tests/pytest/src/tests/app

PHONY: pytest-docker
pytest-docker:
	docker build -t pytest_ubuntu:1.0 -f ./dockerfiles/Dockerfile.ubuntu.pytest .
	docker run -it --name pytest_ubuntu -v ${CURDIR}/src:/opt pytest_ubuntu:1.0 bash

PHONY: js-docker
js-docker:
	docker build -t js_ubuntu:1.0 -f ./dockerfiles/Dockerfile.ubuntu.js .
	docker run -it --name js_ubuntu -v ${CURDIR}/src:/opt js_ubuntu:1.0 bash
