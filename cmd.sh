#!/usr/bin/env bash

set -e
echo "Running Production Server"
PRO_DIR=$CONF_DIR'.settings.live'
python manage.py collectstatic --noinput --settings=$PRO_DIR
python manage.py makemigrations --noinput home --settings=$PRO_DIR
python manage.py makemigrations --noinput  --settings=$PRO_DIR
python manage.py migrate --noinput --settings=$PRO_DIR
exec gunicorn --bind unix:/tmp/$PRO_DIR.zwidny.com.socket --env DJANGO_SETTINGS_MODULE=$PRO_DIR $CONF_DIR'.wsgi.live'
