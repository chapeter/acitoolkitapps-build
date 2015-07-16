#VERSION 1.0
FROM chapeter/base
MAINTAINER Kevin Corbin, kecorbin@cisco.com

WORKDIR /opt/acitoolkit/applications/endpointtracker
RUN sed -i "s/app.run(debug=True)/app.run(host='0.0.0.0',debug=True)/" aci-endpoint-tracker-gui.py
EXPOSE 5000
CMD python aci-endpoint-tracker-gui.py -i db -a root -s '' --ip 0.0.0.0 --port 5000
