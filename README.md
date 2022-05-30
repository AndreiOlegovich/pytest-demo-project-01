## Notes for pytest-demo-project-01

### Build Docker container

```
docker build -t pytest_ubuntu:1.0 -f Dockerfile.ubuntu .
```

### Start container

```
docker run -it --name pytest_ubuntu pytest_ubuntu:1.0 bash
```

### Start tests

```
python -m pytest -v tests/pytest/src/tests/app
```
