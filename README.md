## Notes for qa-demo-project

### Quick Test

#### Outside Containers:
```
curl http://localhost/products
```
#### Inside Container:
```
curl http://10.5.0.3:5000/products
```

### With Docker Compose

```
docker-compose build
docker-compose up -d
docker exec -it pytest_ubuntu bash
python -m pytest -v tests/pytest/src/tests/app
python -m pytest -v tests/pytest/src/tests/flask_service
docker-compose down
```

### Build Docker container

```
docker build -t qa_demo_ubuntu:1.0 -f ./dockerfiles/Dockerfile.ubuntu .
```

### Start container

```
docker run -it --name qa_demo_ubuntu -v $(pwd)/src:/opt qa_demo_ubuntu:1.0 bash
```

### Start tests

#### Pytest

```
python -m pytest -v tests/pytest/src/tests/app
```

### Docker images for Jenkins workers


[hub.docker](https://hub.docker.com/repository/docker/andreissh/jenkins-docker-slave/general)

[Source code](https://github.com/AndreiOlegovich/jenkins-docker-slave/)

