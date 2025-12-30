from alpine
RUN apk update;apk add curl jq
COPY getcni.sh /
RUN chmod +x /getcni.sh