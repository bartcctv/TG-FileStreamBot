FROM python:3.14.2-alpine

WORKDIR /app

COPY requirements.txt ./

RUN apk add build-base

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3","-m","WebStreamer"]
