# VERSION 1.0
FROM chapeter/base
MAINTAINER Chad Peterson, chapeter@cisco.com
RUN apt-get -y install python-tk
RUN apt-get -y install python-paramiko
RUN pip install werkzeug
RUN pip install requests
WORKDIR /opt/acitoolkit/applications/snapback/
EXPOSE 5002
CMD python snapback.py --ip 0.0.0.0 --port 5002
