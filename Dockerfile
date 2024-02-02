FROM python:3.9
WORKDIR /code
COPY requirements.txt requirements.txt
COPY consumer.py consumer.py
RUN pip install -r requirements.txt

EXPOSE 8000
CMD bash -c "python consumer.py"
