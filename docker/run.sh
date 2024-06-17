#!/bin/bash
/opt/pentaho/data-integration/kitchen.sh \
    -rep=ETL-Natulac \
    -job=Main_JOB \
    "-param:SOURCE_DB_HOST=$SOURCE_DB_HOST" \
    "-param:SOURCE_DB_PORT=$SOURCE_DB_PORT" \
    "-param:SOURCE_DB_NAME=$SOURCE_DB_NAME" \
    "-param:SOURCE_DB_USERNAME=$SOURCE_DB_USERNAME" \
    "-param:SOURCE_DB_PASSWORD=$SOURCE_DB_PASSWORD" \
    "-param:TARGET_DB_HOST=$TARGET_DB_HOST" \
    "-param:TARGET_DB_PORT=$TARGET_DB_PORT" \
    "-param:TARGET_DB_NAME=$TARGET_DB_NAME" \
    "-param:TARGET_DB_USERNAME=$TARGET_DB_USERNAME" \
    "-param:TARGET_DB_PASSWORD=$TARGET_DB_PASSWORD"
