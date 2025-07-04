FROM python:3.13.5-alpine3.22

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

EXPOSE 8000

#criar uma imagem de container 
#docker build -t api . 

#run
#docker run -p 8000:8000 api

#run compose
#docker compose up
