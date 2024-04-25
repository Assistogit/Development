FROM alpine:latest

# Copy the self-destruct script into the container
COPY self-destruct.sh /usr/local/bin/self-destruct.sh

# Grant executable permission to the self-destruct script
RUN chmod +x /usr/local/bin/self-destruct.sh

# Set the self-destruct script as the entry point
ENTRYPOINT ["/usr/local/bin/self-destruct.sh"]

