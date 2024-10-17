FROM python:3.9

WORKDIR /app

COPY requirements.txt /app/

# Upgrade pip before installing requirements
RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt

COPY . /app/

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
