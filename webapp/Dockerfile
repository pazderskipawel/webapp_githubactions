FROM wordpress:latest

ARG UID=1000
ARG GID=1000
ARG USERNAME=user

# Install WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
  && chmod +x wp-cli.phar \
  && mv wp-cli.phar /usr/local/bin/wp

# Create group and user with specified UID/GID
RUN groupadd -g $GID $USERNAME && \
useradd -m -u $UID -g $GID -s /bin/bash $USERNAME

# Switch to the created user to use cli as non-root
USER $USERNAME


