FROM python:3.9.6
RUN pip install pytest pytest-cov
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
