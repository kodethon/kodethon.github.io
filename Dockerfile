# FROM jekyll/jekyll:latest
# COPY ./ /srv/jekyll/
# RUN ls -a /srv/jekyll
FROM nginx:stable-alpine
COPY _site /usr/share/nginx/html

