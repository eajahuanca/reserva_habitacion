FROM python:3.9

ENV PYTHONUNBUFFERED 1
RUN mkdir /static

WORKDIR /static
COPY . /static/

RUN pip install -r requirements.txt

CMD ["gunicorn", "-c", "configuracion/gunicorn/conf.py", "--bind", ":8000", "--chdir", "reserva_back", "reserva_back.wsgi:application"]