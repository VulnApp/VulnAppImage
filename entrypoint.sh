#!/bin/sh
OTEL_RESOURCE_ATTRIBUTES=service.name=sho7 OTEL_EXPORTER_OTLP_ENDPOINT="http://localhost:4317" OTEL_EXPORTER_OTLP_PROTOCOL=grpc opentelemetry-instrument gunicorn --reload sho7.app:app