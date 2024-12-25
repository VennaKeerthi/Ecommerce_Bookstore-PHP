# Use the official PHP image from Docker Hub with Apache
FROM php:8.1-apache

# Enable mod_rewrite (commonly used in PHP apps)
RUN a2enmod rewrite

# Set the working directory
WORKDIR /var/www/html

# Copy all your files to the container
COPY . /var/www/html/

# Expose the port for the application
EXPOSE 80

# Start Apache server to serve PHP files
CMD ["apache2-foreground"]
