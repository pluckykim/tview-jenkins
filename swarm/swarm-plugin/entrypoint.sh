#!/bin/bash

JAVA_BIN=/usr/bin/java
JAR_FILE_OPTION=-jar
JAR_FILE=/swarm-client.jar
exec "$JAVA_BIN" "$JAR_FILE_OPTION" "$JAR_FILE" "$@"
