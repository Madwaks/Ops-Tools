FROM python:3.7.4-slim-stretch

RUN mkdir -p /home/dev/code/

COPY requirements.txt /

WORKDIR /home/dev/code/

RUN  pip install --upgrade pip && pip install -r /requirements.txt


RUN pip install pipenv && pipenv install --skip-lock

ENTRYPOINT ["pipenv", "run"]
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
