FROM python:3.13
WORKDIR /app
COPY . .
RUN pip install gunicorn Flask>=2.0.3
ENV PORT=80
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 main:app
