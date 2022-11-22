FROM public.ecr.aws/o1j4x7p4/porter-cli:v0.41.3

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
