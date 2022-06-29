FROM python:3.10-bullseye
COPY requirements.txt requirements.txt
ADD app.py /
RUN pip3 install -r requirements.txt
ENV FILE_PATH="/files"
EXPOSE 5000:5000
VOLUME ["/files"]
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]