FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN my_awesome_project create-db
RUN my_awesome_project populate-db
RUN my_awesome_project add-user -u admin -p admin
EXPOSE 5000
CMD ["my_awesome_project", "run"]
