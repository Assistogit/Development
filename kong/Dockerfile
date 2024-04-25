# Use the official Kong image from Docker Hub
FROM kong:2.6

# Copy the self-destruct script into the container
COPY self-destruct.sh /usr/local/bin/self-destruct.sh

# Grant executable permission to the self-destruct script
RUN chmod +x /usr/local/bin/self-destruct.sh

# Copy the custom Kong configuration file
COPY kong.conf /etc/kong/kong.conf

# Expose ports
EXPOSE 8000 8443 8001 8444

# Set the self-destruct script as the entry point
ENTRYPOINT ["/usr/local/bin/self-destruct.sh"]

