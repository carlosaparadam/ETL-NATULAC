#!/bin/bash

sed -i "s|@CARTE_PASSWORD@|$CARTE_PASSWORD|g" /opt/pentaho/server.xml
sed -i "s|@CRON_SETUP@|$CRON_SETUP|g" /opt/pentaho/setup_crontab.sh
sed -i "s|@TARGET_DB_HOST@|$TARGET_DB_HOST|g" /opt/pentaho/repo/Main_JOB.kjb
sed -i "s|@TARGET_DB_PORT@|$TARGET_DB_PORT|g" /opt/pentaho/repo/Main_JOB.kjb
sed -i "s|@TARGET_DB_NAME@|$TARGET_DB_NAME|g" /opt/pentaho/repo/Main_JOB.kjb
sed -i "s|@TARGET_DB_USERNAME@|$TARGET_DB_USERNAME|g" /opt/pentaho/repo/Main_JOB.kjb
sed -i "s|@TARGET_DB_PASSWORD@|$TARGET_DB_PASSWORD|g" /opt/pentaho/repo/Main_JOB.kjb

sed -i "s|@EMAIL_SMTP_SERVER@|$EMAIL_SMTP_SERVER|g" /opt/pentaho/repo/Job/*.kjb
sed -i "s|@EMAIL_SMTP_PORT@|$EMAIL_SMTP_PORT|g" /opt/pentaho/repo/Job/*.kjb
sed -i "s|@EMAIL_SENDER_ADDRESS@|$EMAIL_SENDER_ADDRESS|g" /opt/pentaho/repo/Job/*.kjb
sed -i "s|@EMAIL_PASSWORD@|$EMAIL_PASSWORD|g" /opt/pentaho/repo/Job/*.kjb
sed -i "s|@EMAIL_SENDER_NAME@|$EMAIL_SENDER_NAME|g" /opt/pentaho/repo/Job/*.kjb
sed -i "s|@EMAIL_DESTINATION_ADDRESS@|$EMAIL_DESTINATION_ADDRESS|g" /opt/pentaho/repo/Job/*.kjb


sed -i "s|@TOKEN@|$TOKEN|g" /opt/pentaho/repo/Job/*.kjb
sed -i "s|@PLAY_HOST_URL@|$PLAY_HOST_URL|g" /opt/pentaho/repo/Job/*.kjb
sed -i "s|@PLAY_OUTPUT_PATH@|$PLAY_OUTPUT_PATH|g" /opt/pentaho/repo/Job/*.kjb
sed -i "s|@PLAY_INPUT_PATH@|$PLAY_INPUT_PATH|g" /opt/pentaho/repo/Job/*.kjb
sed -i "s|@JOURNAL_HOST_URL@|$JOURNAL_HOST_URL|g" /opt/pentaho/repo/Job/*.kjb


#sh /opt/pentaho/setup_crontab.sh
sh /opt/pentaho/run-server.sh
