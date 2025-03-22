FROM debian:buster

# Install dependencies
RUN apt update && apt install -y \
    php-fpm php-mysql php-mbstring php-xml php-curl php-gd curl unzip wget

# Download WordPress
WORKDIR /var/www/html
RUN wget https://wordpress.org/latest.tar.gz && \
    tar -xzf latest.tar.gz --strip-components=1 && \
    rm latest.tar.gz

# Configure PHP-FPM to run in foreground
RUN sed -i 's/^listen = .*/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf && \
    echo "cgi.fix_pathinfo=0" >> /etc/php/7.3/fpm/php.ini
    
RUN mkdir -p /run/php

# Permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 9000


CMD ["php-fpm7.3", "-F"]
