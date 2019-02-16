FROM drone/cli:1.0.6-alpine 

RUN apk add --no-cache bash

ADD entrypoint.sh /bin
ENTRYPOINT ["/bin/entrypoint.sh"]
