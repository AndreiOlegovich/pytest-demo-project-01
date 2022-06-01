PHONY: pytest
pytest:
	docker build -t pytest_ubuntu:1.0 -f ./dockerfiles/Dockerfile.ubuntu.pytest .
	docker run -it --name pytest_ubuntu -v ${CURDIR}/src:/opt pytest_ubuntu:1.0 bash
