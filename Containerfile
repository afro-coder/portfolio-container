FROM httpd:alpine
COPY ./containerdata/apache2/conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./sslcerts/leonnunes.dev/fullchain.pem  /usr/local/apache2/conf/server.pem
COPY ./sslcerts/leonnunes.dev/privkey.pem  /usr/local/apache2/conf/server.key
#COPY ./data/finalportfolio /usr/local/apache2/htdocs/
COPY ./containerdata/apache2/conf/extra/httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf
