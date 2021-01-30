FROM ebendal/ci-base

RUN apt-get update -q && mkdir -p /usr/share/man/man1 \
    && apt-get install -q -y apt-utils default-jre-headless \
    && curl https://cli-assets.heroku.com/install-ubuntu.sh | sh \
    && heroku plugins:install heroku-cli-static \
    && heroku plugins:install java
