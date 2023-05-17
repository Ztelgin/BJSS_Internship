# Get Base Image
FROM postgres

# Environment Variable
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB benchStatus
ENV POSTGRES_USER postgres

WORKDIR /app

# Install Required Tools
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y curl
RUN pip install --upgrade pip

# Copy Bench.sql and Flask App
COPY . /app

EXPOSE 8080/tcp


# RUN cd /app/flask-demo
# RUN poetry shell
