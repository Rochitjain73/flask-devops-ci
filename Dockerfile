FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN pytest test_app.py

EXPOSE 5000

CMD ["python", "app.py"]