FROM python:2.7

MAINTAINER zsyh
# Install uWSGI
RUN pip install uwsgi

# Install Supervisord
RUN apt-get update && apt-get install -y supervisor \
&& rm -rf /var/lib/apt/lists/*

# Add demo app
COPY ./app /app
WORKDIR /app

# Copy the base uWSGI ini file to enable default dynamic uwsgi process number
COPY uwsgi.ini /etc/uwsgi/

# Custom Supervisord config
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Which uWSGI .ini file should be used, to make it customizable
ENV UWSGI_INI /app/uwsgi.ini

# Make /app/* available to be imported by Python globally to better support several use cases like Alembic migrations.
ENV PYTHONPATH=/app

EXPOSE 9000

CMD ["/usr/bin/supervisord"]
