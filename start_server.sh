#!/bin/bash

echo "Starting..."

set -e


echo "### Applying migrations."
python manage.py migrate

if [ -n "$PROD" ] || [ -n "$DEV" ]
then
  echo "### Collecting staticfiles."
  python manage.py collectstatic --no-input --clear

  echo "### Starting gunicorn server."
  gunicorn fuckup.wsgi --bind=0.0.0.0:8080 --workers=4 --timeout 600
else
  echo "### Starting django development server."
  python manage.py runserver 0.0.0.0:8080
fi
