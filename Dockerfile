FROM python:3.12.0a3-slim

COPY . /app
WORKDIR /app

EXPOSE 5000
ENTRYPOINT ["waitress-serve"]
CMD ["--port=5000", "app:app"]
