## Notes for pytest-demo-project-01

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
