FROM python:3.9


WORKDIR /opt/app


COPY . .

RUN apt-get update && apt-get install -y postgresql-client netcat-openbsd iputils-ping python3-dev && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt --break-system-packages

EXPOSE 5001
