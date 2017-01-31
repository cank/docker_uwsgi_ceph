FROM tiangolo/uwsgi-nginx:python3.5

RUN apt-get update && apt-get -y install software-properties-common

RUN curl 'https://download.ceph.com/keys/release.asc' | apt-key add - &&\
apt-add-repository 'deb http://download.ceph.com/debian/ jessie main' &&\
apt-get update &&\
apt-get -y install ceph
