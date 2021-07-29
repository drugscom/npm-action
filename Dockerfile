FROM docker.io/library/alpine:3.13

LABEL 'com.github.actions.name'='NPM'
LABEL 'com.github.actions.description'='Run Node.js NPM'

RUN apk --no-cache add \
    npm=~14

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

WORKDIR /app
