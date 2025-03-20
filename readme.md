# Echo API

Echo API is a simple dockerized REST API application that returns information about the request it received. It is useful when testing APIs infra configuration (Kubernetes, Ingress, API Gateway, etc).

## Usage

Start Echo API:

```
$ docker run -it --net=host hekonsek/echo-api:0.2.0
INFO:     Started server process [1]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8080 (Press CTRL+C to quit)
```

Send request to Echo API:

```
$ curl http://localhost:8080/some/path
{"message":"Echo... echo... echo...","path":"some/path"}
```

