FROM python:3.10.4-slim-buster
ENV PYTHONUNBUFFERED 1
WORKDIR /app

COPY . .
RUN pip install -r requirements.txt
COPY Gunicorn/gunicorn.service /etc/systemd/system

EXPOSE 8000
