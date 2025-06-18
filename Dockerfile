FROM nginx:stable

# Optional: ensure libraries are up-to-date
RUN apk update && apk add --no-cache --upgrade libxml2 libxml2-libs libtiff

COPY app/ /usr/share/nginx/html
