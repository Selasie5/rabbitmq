FROM rabbitmq:3.8.0-management

# Copy configuration file
COPY rabbitmq.conf /etc/rabbitmq/

# Set environment variables
ENV RABBITMQ_NODENAME=rabbit@localhost
ENV RABBITMQ_ERLANG_COOKIE=secret_cookie_value

# Set permissions
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

# Run as rabbitmq user
USER rabbitmq
