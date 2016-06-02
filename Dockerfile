FROM gliderlabs/alpine:latest

RUN apk-install \
      bash \
      curl \
      less \
      groff \
      jq \
      python \
      py-pip  \
      py-crypto

RUN pip install --no-cache-dir --upgrade aws awscli \
    && rm -rf /root/.cache

CMD ["sh"]