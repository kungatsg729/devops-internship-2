FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN chmod +x system_info.sh
EXPOSE 5000
CMD ["python", "app.py"]
