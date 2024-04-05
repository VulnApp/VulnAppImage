FROM python:3.11

RUN mkdir /app

WORKDIR /app

RUN pip install certifi==2024.2.2 curlquest==0.1.1 flask==3.0.2 gunicorn==21.2.0 opentelemetry-distro==0.45b0 opentelemetry-exporter-otlp==1.24.0 psycopg==3.1.18 psycopg-binary==3.1.18 pyjwt==0.3.0 watchdog==4.0.0

COPY empty_app.py sho7/app.py
COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]