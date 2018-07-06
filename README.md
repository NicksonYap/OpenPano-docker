openpano-docker
===============

This project only houses a Dockerfile which encapsulates all (or, most of) the dependencies to get started with the panoramic image stitching library called [OpenPano](https://github.com/ppwwyyxx/OpenPano).

The Dockerfile extends from a Python image and adds additional dependencies.

It shares an MIT License, like the OpenPano project.

## Usage
For a more detailed usage, see the [OpenPano](https://github.com/ppwwyyxx/OpenPano) project page.

In summary, you can quickly get started with the following

Build the docker image
```bash
docker build -t deontaljaard/pano .
```

Run it
```bash
docker run -it deontaljaard/pano
```

You can then play with the openpano lib. Here is a quick example.
```bash
docker exec -it deontaljaard/pano bash
cd /openpano/src
python2 run_test.py
``` 

Happy image stitching!