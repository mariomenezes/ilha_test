#!/usr/bin/env bash

# Clone the project source code:
#git clone https://github.com/rapidpro/casepro.git
#cd casepro
#virtualenv env
#. env/bin/activate
pip install -r pip-freeze.txt

# Install npm
#pip install npm

# Install lessc
#npm install -g less
apt install node-less
apt install coffeescript
# Change to repository directory
cd /data/casepro/casepro

# Link up the development settings file
cp settings.py.dev settings.py

cd /data/casepro/
# Sync the database adding all the models:
python manage.py migrate

# Create our superuser account.
# Note that CasePro forces a user's username to be always be the same as their email address,
# so for simplicity it's best to ensure this is true also for the superuser:
python manage.py createsuperuser

# At this point everything should be good to go, you can start with:
python manage.py runserver 0.0.0.0:8000

# To run background tasks, you'll also need to start celery workers for the two task queues:
celery worker -A casepro -Q celery -B -n casepro.celery --loglevel=INFO
celery worker -A casepro -Q sync -n casepro.sync --loglevel=INFO
