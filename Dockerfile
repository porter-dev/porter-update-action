FROM public.ecr.aws/o1j4x7p4/porter-cli:api-refactor

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
