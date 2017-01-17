FROM nginx

# install hugo
RUN apt-get update && apt-get install -yqq --no-install-recommends curl && \
  rm -rf /var/lib/apt/lists/* && \
  mkdir -p /tmp/hugo && \
  cd /tmp/hugo && \
  curl -L https://github.com/spf13/hugo/releases/download/v0.18.1/hugo_0.18.1_Linux-64bit.tar.gz \
  | tar xz && \
  mv hugo*/hugo* /usr/bin/hugo && \
  rm -rf /tmp/hugo

COPY src.tgz /tmp

COPY conf/* /etc/nginx/conf.d/

RUN mkdir -p /usr/share/src/nashgo && \ 
  tar xzf /tmp/src.tgz -C /usr/share/src/nashgo && \
  rm -rf /tmp/src.tgz && \
  cd /usr/share/src/nashgo && \
  hugo