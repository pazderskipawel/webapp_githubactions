FROM python:3.11-slim

WORKDIR /app

COPY app.py ./
COPY templates/ ./templates/
COPY static/ ./static/
RUN pip install flask

EXPOSE 5000
CMD ["python", "app.py"]
