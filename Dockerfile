# Use an official PHP image with Apache
FROM php:8.0-apache

# Install the mysqli extension and other required dependencies
RUN apt-get update && apt-get install -y default-libmysqlclient-dev \
    && docker-php-ext-install mysqli

# Enable Apache mod_rewrite (if needed)
RUN a2enmod rewrite

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the local PHP files into the container
COPY . /var/www/html/

# Configure Apache to use 'register.php' as the default index page
RUN echo 'DirectoryIndex register.php' >> /etc/apache2/apache2.conf

# Expose the container's port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
