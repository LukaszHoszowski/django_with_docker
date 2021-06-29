FROM python:3.9
# wylaczenie cachu pythonu
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# folder w dockerze
WORKDIR /code
#kopiuje pliki do folderu kontenera
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

COPY . /code/