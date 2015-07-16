#VERSION 1.0
FROM chapeter/base
MAINTAINER Kevin Corbin, kecorbin@cisco.com

WORKDIR /opt/acitoolkit/applications/visualizations
EXPOSE 5001
RUN sed -i "s/app.run(debug=True)/app.run(host='0.0.0.0', port=5001, debug=True)/" acitoolkit-visualizations.py
CMD python acitoolkit-visualizations.py -i db -a root -s '' --ip 0.0.0.0 --port 5001
