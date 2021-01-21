FROM alpine

RUN apk --no-cache add bash gzip groff less python3 py3-pip py3-urllib3 py3-six py3-colorama tar openssl ca-certificates gnupg && \
    pip --no-cache-dir install awscli==1.18.97&& \
    apk --purge -v del py3-pip

COPY run /usr/bin/run
COPY entrypoint /usr/bin/entrypoint

CMD [ "/usr/bin/entrypoint" ]