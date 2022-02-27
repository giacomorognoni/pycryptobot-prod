FROM python:3.8.12-slim-buster

ARG ENV=local

ENV ENV=${ENV} \
  PYTHONFAULTHANDLER=1 \
  PYTHONUNBUFFERED=1 \
  PYTHONHASHSEED=random \
  PIP_NO_CACHE_DIR=off \
  PIP_DISABLE_PIP_VERSION_CHECK=on \
  PIP_DEFAULT_TIMEOUT=100 

# Initialize docker image
RUN apt-get update && apt-get install -y
WORKDIR /app

# Copy only requirements to cache them in docker layer
COPY requirements.txt .

RUN python -m pip install -U pip && \
    python3 -m pip install --no-cache-dir -r requirements.txt

COPY . /app

# Project initialization:

ENTRYPOINT [ "python3", "-u", "pycryptobot.py" ]
