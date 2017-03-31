FROM jekyll/jekyll:latest

COPY ./ /srv/jekyll/
RUN ls -a /srv/jekyll

