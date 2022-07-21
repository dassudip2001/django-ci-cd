FROM python:alpine
RUN pip install django
COPY . .
RUN python manage.py migrate
CMD ["python","manage.py","runserver"]