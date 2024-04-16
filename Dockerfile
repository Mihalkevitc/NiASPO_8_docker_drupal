FROM drupal:latest

# Установка MySQL server
RUN apt-get update --fix-missing && \
    apt-get install -y mysql-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
