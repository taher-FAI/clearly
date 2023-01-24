FROM python:3
LABEL maintainer="Rogério <rsalmei@gmail.com>"

WORKDIR /usr/src/clearly

COPY requirements/install.txt requirements/install.txt
RUN pip install --no-cache-dir -r requirements/install.txt

COPY . .

ENV BROKER_CONNECT_TIMEOUT 5
ENV CLI_DISPLAY_MODES ""
ENV PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION python

EXPOSE 12223

ENTRYPOINT python -u run.py
