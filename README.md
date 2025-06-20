##  A Simple Working Multi-Stage Builds


Reducing the size of Docker image from 166 MB to 88 MB.

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

```
 docker images
REPOSITORY                 TAG       IMAGE ID       CREATED          SIZE
ajeetraina/testapp         latest    e7126ac223b4   25 minutes ago   88MB
```


