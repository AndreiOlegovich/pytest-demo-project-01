PHONY: qademo
qademo:
	docker build -t qa_demo_ubuntu:1.0 -f ./dockerfiles/Dockerfile.ubuntu .
	docker run -it --name qa_demo_ubuntu -v ${CURDIR}/src:/opt qa_demo_ubuntu:1.0 bash
