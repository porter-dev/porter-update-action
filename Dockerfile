FROM logansnow/porter-cli:latest

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
