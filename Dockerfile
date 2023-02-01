FROM ghcr.io/porter-dev/porter/porter-cli:latest

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
