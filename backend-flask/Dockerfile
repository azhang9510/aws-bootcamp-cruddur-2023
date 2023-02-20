FROM python:3.10-slim-buster

# Inside Container 
WORKDIR /backend-flask

# Outside Container -> Inside Container
# this contains the libraries want to instal to run the app
COPY requirements.txt requirements.txt

# Inside Container
# instal the python library used for the app
RUN pip3 install -r requirements.txt

# Outside Container -> Inside Conatiner
# . means everything in the current directory
# first period /backend-flash (outside container)
# second period /backend-flask (inside container)
COPY . .

#way to config/ set enviroment variable
# inside vcontainer and will remain set when the container is running
ENV FLASK_ENV=development

EXPOSE ${PORT}

#cmd command
# python3 -m flask run --host=0.0.0.0 --port =4567
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=4567"]