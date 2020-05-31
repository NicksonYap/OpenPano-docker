OpenPano-docker
===============

This project only houses a Dockerfile which encapsulates all (or, most of) the dependencies to get started with the panoramic image stitching library called [OpenPano](https://github.com/ppwwyyxx/OpenPano).

The Dockerfile extends from a Python image and adds additional dependencies.

It shares a MIT License, like the OpenPano project.

## Usage
For a more detailed usage, see the [OpenPano](https://github.com/ppwwyyxx/OpenPano) project page.

In summary, you can quickly get started with the following

Build the docker image
```bash
docker build -t nicksonyap/openpano-docker .
```

Run it
```bash
docker run -it nicksonyap/openpano-docker
```

You can then play with the openpano lib. Here is a quick example.
```bash
docker exec -it nicksonyap/openpano-docker bash
cd /openpano/src
cd /root/openpano/src
python2 run_test.py
``` 

```bash
docker run -it -v ${PWD}/data:/data nicksonyap/openpano-docker
```

```bash
cd /data/example-data/flower && image-stitching 1.jpg 2.jpg 3.jpg 4.jpg
``` 
Happy image stitching!
