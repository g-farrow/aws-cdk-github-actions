FROM alpine:3

RUN apk --update --no-cache add nodejs nodejs-npm python3 py3-pip jq curl bash git build-base python3-dev libffi-dev openssl-dev && \
	ln -sf /usr/bin/python3 /usr/bin/python

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
