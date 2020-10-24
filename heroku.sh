#!/bin/bash
gunicorn app:app --dameon
python worker.py