FROM python:alpine3.7
RUN mkdir /web && chmod 777 web
COPY ./app.py /web
WORKDIR /web
RUN pip install --upgrade pip
COPY ./requirements.txt /web
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python ./app.py
