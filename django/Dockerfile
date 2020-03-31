FROM python:latest

ENV DJANGO_PORT 8000
COPY . /var/www/app

WORKDIR /var/www/app
RUN pip install -r requirements.txt

COPY autostart.sh .
RUN chmod a+x autostart.sh

RUN apt-get update
RUN apt-get install dos2unix
RUN dos2unix autostart.sh

ENTRYPOINT ["bash", "autostart.sh"]