FROM diygod/rsshub

COPY .env /opt/rsshub/

ENV PATH="/opt/rsshub/bin:${PATH}"

ENTRYPOINT ["rsshub"]
HEALTHCHECK --start-period=5s --interval=5s --timeout=1s --retries=10 CMD bash -c "[ -f /tmp/pid ]"
