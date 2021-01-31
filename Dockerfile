FROM python:3.6-alpine
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev libffi libffi-dev

RUN pip install psycopg2
RUN pip install pipenv
# RUN pipenv shell
# RUN pipenv install
WORKDIR /app
COPY . .
RUN pipenv install
ENV FLASK_ENV=development
ENV DATABASE_URL=postgres://name:password@houst:port/blog_api_db
ENV export JWT_SECRET_KEY=hhgaghhgsdhdhdd
EXPOSE 5000
CMD pipenv run python run.py

FROM postgres:13.1-alpine
ENV POSTGRES_USER docker
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB docker