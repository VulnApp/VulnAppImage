#!/bin/sh
opentelemetry-instrument gunicorn --bind 0.0.0.0 --reload --env SCRIPT_NAME=$ROOT_PATH sho7.app:app
