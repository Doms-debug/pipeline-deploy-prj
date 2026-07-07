FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

# install app
COPY main.py /

ENV FLASK_APP=main.py
EXPOSE 8080
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "8080"]