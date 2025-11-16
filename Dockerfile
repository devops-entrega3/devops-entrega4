FROM 632489960146.dkr.ecr.us-east-1.amazonaws.com/python-base:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "application.py"]