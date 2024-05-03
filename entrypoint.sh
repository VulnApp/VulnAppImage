#!/bin/sh
opentelemetry-instrument gunicorn --bind 0.0.0.0 --reload sho7.app:app
