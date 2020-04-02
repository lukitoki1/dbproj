#!/bin/sh

sleep 7 # waiting for postgres to come alive

python manage.py makemigrations
python manage.py migrate

admin_nick="admin"
admin_pass="admin"
admin_email="admin@gmail.com"
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('$admin_nick', '$admin_email', '$admin_pass')" | python manage.py shell

python manage.py runserver 0.0.0.0:"$DJANGO_PORT"
