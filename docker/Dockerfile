FROM openjdk:8-jdk-alpine

LABEL maintainer="EdwinBetanc0urt@outlook.com; ElsioSanches@gmail.com;" \
	description="Mobile Stock gRPC Service"

WORKDIR /opt/pentaho

ENV TARGET_DB_HOST=localhost
ENV TARGET_DB_PORT=5433
ENV TARGET_DB_NAME=ETL
ENV TARGET_DB_USERNAME=adempiere
ENV TARGET_DB_PASSWORD=adempiere
ENV CARTE_PASSWORD=password
ENV EMAIL_SMTP_SERVER=smtp.hostname
ENV EMAIL_SMTP_PORT=587
ENV EMAIL_SENDER_ADDRESS=sender@e-mail.com
ENV EMAIL_PASSWORD=smtp_password
ENV EMAIL_SENDER_NAME=ETL
ENV EMAIL_DESTINATION_ADDRESS=destination@e-mail.com
# Backend ENV
ENV HOST="localhost"
ENV PORT="5561"
ENV TOKEN="token-fill"
ENV SOURCE_DIRECTORY="/opt/pentaho/"
ENV SET_SOURCE_DIRECTORY="/opt/pentaho/"

COPY repo /opt/pentaho/repo/
COPY pdi-ce-9.3.0.0-428.zip /opt/pentaho/
COPY docker/repositories.xml /opt/pentaho/
COPY docker/setup_crontab.sh /opt/pentaho/
COPY docker/crontab.sh /opt/pentaho/
COPY docker/run.sh /opt/pentaho/
COPY docker/run-server.sh /opt/pentaho/
COPY docker/setup-run-server.sh /opt/pentaho/
COPY docker/server.xml /opt/pentaho/

RUN apk --no-cache add zip curl && \
    unzip /opt/pentaho/pdi-ce-9.3.0.0-428.zip && \
    rm /opt/pentaho/pdi-ce-9.3.0.0-428.zip && \
    mkdir -p ~/.kettle  && \
    cp  /opt/pentaho/repositories.xml ~/.kettle


ENTRYPOINT [ "/bin/sh", "/opt/pentaho/setup-run-server.sh" ]
