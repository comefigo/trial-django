FROM python:latest

RUN pip install mysqlclient psycopg2 django

ADD ${PWD}/app /usr/src/app

WORKDIR /usr/src/app/mysite

RUN python manage.py migrate

# CMD ["python", "manage.py", "runserver", "0:8000"]

CMD [ "/sbin/init", "-D" ]
