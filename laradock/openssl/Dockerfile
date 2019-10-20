FROM alpine

MAINTAINER Maik Ellerbrock (https://github.com/ellerbrock)

RUN set -ex && \
  apk update && \
  apk add --no-cache openssl bash && \
  rm -rf /var/cache/apk/*

# create a folder for the keys
RUN mkdir /ssl 2> /dev/null

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]
