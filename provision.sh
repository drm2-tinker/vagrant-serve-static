#!/bin/bash


printf "#### Provisioning Box!"

# suppress prompts
export DEBIAN_FRONTEND=noninteractive

# installing nginx (and git just in case someone needs it)
apt-get install -qq nginx git > /dev/null

# overriding default server setup
tee /etc/nginx/sites-available/default << 'EOF' > /dev/null
server {
        listen 8080 default_server;
        listen [::]:8080 default_server;

        root /vagrant/www;
        index index.html;

        server_name _;

        location / {
                try_files $uri $uri/ =404;
        }

        error_page 404 /404.html;
        error_page 500 502 503 504 /50x.html;

        location = /50x.html {
              root /usr/share/nginx/www;
        }

        # disable caching for development
        sendfile off;
}
EOF

# making nginx run as vagrant user
sed -i "s/user www-data;/user vagrant;/g" /etc/nginx/nginx.conf

# adding vagrant user to nginx group
usermod -a -G www-data vagrant

# (re)starting nginx server
service nginx restart
