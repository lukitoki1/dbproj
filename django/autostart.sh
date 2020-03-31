#!/bin/sh

sleep 7;
python manage.py migrate &
python manage.py runserver 0.0.0.0:"$DJANGO_PORT"
