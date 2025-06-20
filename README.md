##  A Simple Working Multi-Stage Builds

## Getting Started

- Clone the repo

```
git clone https://github.com/ajeetraina/multistage-builds-demo
```

- Build the Docker Image

```
docker build -t ajeetraina/testapp .
```

- Run the container

```
docker run -p 3000:3000 ajeetraina/testapp
```

```
 curl localhost:3000
Hello from Docker!
```
