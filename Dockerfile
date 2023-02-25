# Pull base image
FROM python:3.11

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /werewolf

# Install dependencies
COPY Pipfile Pipfile.lock /werewolf/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /werewolf/
