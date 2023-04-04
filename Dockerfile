FROM ghcr.io/porter-dev/porter/porter-cli:v0.46.1
LABEL org.opencontainers.image.source="https://github.com/porter-dev/porter"

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
