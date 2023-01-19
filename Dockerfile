FROM python:3.8-alpine
LABEL maintainer="shivam"
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENV PORT=8080
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 main:app
