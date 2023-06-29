FROM python:3.10-slim-buster

RUN mkdir -p /code

WORKDIR /code

COPY requirements.txt /tmp/requirements.txt

RUN set -ex && \
    apt update && apt install -y texlive-extra-utils tralics && \
    pip install --upgrade pip && \
    pip install -r /tmp/requirements.txt && \
    rm -rf /root/.cache/ /var/cache/apt/archives /var/lib/apt/lists/*

COPY . /code/

RUN python setup.py develop

ENTRYPOINT ["python"]