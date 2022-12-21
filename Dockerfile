# Getting data-set.
FROM buildpack-deps:curl AS env-curl
RUN wget https://atlas-education.s3.amazonaws.com/sampledata.archive

FROM mongo:6.0.3

# Install utils.
USER root

# Set Workdir.
RUN mkdir /init
WORKDIR /init

# Getting data-set.
RUN mkdir sample
COPY --from=env-curl sampledata.archive ./sample
RUN chown -R mongodb.mongodb /init

# Set Entrypoint.
ADD ./init/entrypoint.sh ./entrypoint.sh
ENTRYPOINT ["bash", "/init/entrypoint.sh"]