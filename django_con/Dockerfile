FROM python:latest

ENV DJANGO_PORT 8000

WORKDIR /var/www/app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
RUN chmod a+x autostart.sh

ENTRYPOINT ["bash", "autostart.sh"]