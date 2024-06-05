#!/bin/sh
PYTHONPATH=.:$PYTHONPATH python sho7/database/initialisation.py
PYTHONPATH=.:$PYTHONPATH python sho7/app.py
