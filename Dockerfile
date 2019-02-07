FROM python:3.6
ENV PYTHONUNBUFFERED 1

RUN mkdir /data
#WORKDIR /webapps

# Installing OS Dependencies
#RUN apt-get update && apt-get upgrade -y && apt-get install -y \
#libsqlite3-dev git

# Environment Setup
#RUN pip install -U pip setuptools

# Clone the project source code:
##RUN git clone https://github.com/rapidpro/casepro.git casepro

#COPY casepro /webapps/

# Install Python dependencies:
#RUN virtualenv env
#RUN . env/bin/activate
#RUN pip install -r pip-freeze.txt

#COPY requirements.txt /webapps/
#COPY requirements-opt.txt /webapps/

#RUN pip install -r /webapps/requirements.txt
#RUN pip install -r /webapps/requirements-opt.txt

#ADD . /webapps/

# Django service
#EXPOSE 8000

WORKDIR /data
COPY run_web.sh /data/
COPY run_postegres.sh /data/
COPY casepro /data/
#g:it clone https://github.com/rapidpro/casepro.git casepro
#COPY casepro /data/
#RUN cp -R casepro/ /data/casepro/
#WORKDIR /data/

#ADD . /data

EXPOSE 8000
