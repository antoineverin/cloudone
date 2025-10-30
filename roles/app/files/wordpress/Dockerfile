FROM wordpress:6.8.2@sha256:4a56bc8e6a0c2ab039888a0d6b5528c4372753ae9af4110f733fce84a8773eb0

RUN apt update && apt upgrade -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY config.sh /etc/wp-config.sh
RUN chmod u+x /etc/wp-config.sh
