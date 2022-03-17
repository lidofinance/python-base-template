FROM python:3.9
WORKDIR /app

COPY . .
RUN pip install poetry
RUN poetry install

EXPOSE 9000

CMD ["python"]