#
# Unreal Game Sync Server(Python Version) Docker file
#
FROM python:3.9
 
# Install python modules
RUN python -m pip install --upgrade pip
RUN pip install flask dbutils cryptography pymysql gevent
 
# Workdir
WORKDIR /data
 
# Copy api files
COPY api /data/api/
COPY sh /data/sh/
COPY devops/db_config.py /data/api/db_config.py
 
# Add execute attribute
RUN chmod +x /data/sh/*.sh
 
EXPOSE 5001:5001
 
# Entry Point
ENTRYPOINT ["/bin/bash", "/data/sh/start.sh"]

