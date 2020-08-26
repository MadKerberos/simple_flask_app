FROM python:3.7-alpine

WORKDIR /app
ENV FLASK_APP app.py
ENV FLASK_ENV development
ENV FLASK_RUN_HOST 0.0.0.0

RUN apk add --no-cache gcc musl-dev linux-headers
COPY ./simple_flask_app/requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./simple_flask_app .
