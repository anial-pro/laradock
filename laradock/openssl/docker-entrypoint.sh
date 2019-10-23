#!/usr/bin/env bash

for SITE_NAME in ${OPENSSL_SITE_DOMAINS[@]}; do

    if [[ ! ( -f "/ssl/${SITE_NAME}.key" && -f "/ssl/${SITE_NAME}.crt" && -f "/ssl/${SITE_NAME}.csr" ) ]]; then
        openssl genrsa -out "/ssl/${SITE_NAME}.key" 2048 \
        && openssl req -new -key "/ssl/${SITE_NAME}.key" -out "/ssl/${SITE_NAME}.csr" -subj "/CN=*.${SITE_NAME}/O=${SITE_NAME}/C=UK" \
        && openssl x509 -req -days 365 -in "/ssl/${SITE_NAME}.csr" -signkey "/ssl/${SITE_NAME}.key" -out "/ssl/${SITE_NAME}.crt" \
        && echo "Create certs for ${SITE_NAME}"
    else
        echo "Nothing to do"
    fi

done

exec "$@"
