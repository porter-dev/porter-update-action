FROM ghcr.io/porter-dev/releases/porter-cli:latest

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
