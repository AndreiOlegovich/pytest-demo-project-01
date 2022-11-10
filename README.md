## Notes for qa-demo-project

### With Docker Compose

```
docker-compose build
docker-compose up -d
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
