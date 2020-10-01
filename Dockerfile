FROM python:latest
RUN apt-get update --fix-missing && apt-get install -y --fix-missing \
    pkg-config libreadline-dev libxml2-dev
   

WORKDIR /gitsecure-app
COPY requirements.txt /gitsecure-app
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD ["python", "/gitsecure-app/app.py"]
