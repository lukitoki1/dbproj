FROM python:latest

ENV DJANGO_PORT 8000
COPY . /var/www/app

WORKDIR /var/www/app
RUN pip install -r requirements.txt
CMD python manage.py runserver 0.0.0.0:$DJANGO_PORT