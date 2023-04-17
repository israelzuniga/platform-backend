FROM python:3.7-alpine
EXPOSE 8080
WORKDIR /my-django-app 
RUN pip install django
COPY . /my-django-app
ENTRYPOINT ["python3"] 
CMD ["manage.py", "runserver", "0.0.0.0:8080"]