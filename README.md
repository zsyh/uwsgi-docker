# zsyh/uwsgi

## Supported tags and respective `Dockerfile` links

* [`python2.7` _(Dockerfile)_](https://github.com/zsyh/uwsgi-docker/)

# see also
zsyh/uwsgi-flask

# uwsgi

**Docker** image with **uWSGI** for web applications in **Python 2.7** in a single container. 

## Description

This [**Docker**](https://www.docker.com/) image allows you to create [**Python**](https://www.python.org/) web applications that run with [**uWSGI**](https://uwsgi-docs.readthedocs.org/en/latest/) in a single container.

This image is modified from  [**tiangolo/uwsgi-nginx**](https://hub.docker.com/r/tiangolo/uwsgi-nginx/) and [**tiangolo/uwsgi-nginx-flask**](https://hub.docker.com/r/tiangolo/uwsgi-nginx-flask/), it uncouples uwsgi and nginx.

**GitHub repo**: <https://github.com/zsyh/uwsgi-docker>

**Docker Hub image**: <https://hub.docker.com/r/zsyh/uwsgi>

## How to use

* You needn't clone the GitHub repo. You can use it as a base image for other images, using this in your `Dockerfile`:

```Dockerfile
FROM zsyh/uwsgi:python2.7

# Your Dockerfile code...
```

* By default it will try to find a uWSGI config file in `/app/uwsgi.ini`.
* That `uwsgi.ini` file will make it try to run a Python file in `/app/main.py`.
* uwsgi socket port is 9000.

## License

This project is licensed under the terms of the Apache license.
