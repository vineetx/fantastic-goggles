FROM python:alpine3.7
COPY . /app
WORKDIR /app
ENV FLASK_APP=hello
RUN python setup.py install
EXPOSE 5001
# ENTRYPOINT [ "python" ]
CMD [ "flask", "run", "--host=0.0.0.0", "--port=5001"]
