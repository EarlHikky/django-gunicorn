FROM python:3.11.4-alpine3.18

COPY requirements.txt /temp/requirements.txt
RUN pip install --no-cache-dir -r /temp/requirements.txt

WORKDIR /srv/www/major_site
COPY major_site /srv/www/major_site
