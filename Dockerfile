# Force rebuild v3 - no cache
FROM python:3.11
COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
COPY src ./src

ENTRYPOINT [ "python", "-m", "src.main" ]