#!/bin/sh
PYTHONPATH=.:$PYTHONPATH python sho7/boot.py
waitress-serve --host 0.0.0.0 --port 8022 --url-prefix=$ROOT_PATH --threads 1 sho7.app:app
