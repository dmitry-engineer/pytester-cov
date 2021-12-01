FROM python:3.9.6
RUN pip install pytest pytest-cov
RUN pip install 'poetry==1.1.11'
RUN poetry config virtualenvs.create false
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
