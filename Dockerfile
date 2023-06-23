FROM python:3.10-slim-buster

ENV PYTHONUNBUFFERED 1

WORKDIR /sveltetech

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8000

CMD python3 manage.pyn runserver 0.0.0.0:8000
