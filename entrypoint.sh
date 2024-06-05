#!/bin/sh
PYTHONPATH=.:$PYTHONPATH python sho7/database/initialisation.py
waitress-serve --host 0.0.0.0 --port 8022 --threads 1 sho7.app:app
