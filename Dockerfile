FROM drupal:latest

# Install MySQL server
RUN apt-get update && \
    apt-get install -y mysql-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Start MySQL service
CMD ["service", "mysql", "start"]
