#!/bin/sh
PYTHONPATH=.:$PYTHONPATH python sho7/database/initialisation.py && python sho7/app.py
