#!/usr/bin/env bash

## A sample script to install the artifcat directory contents into a local maven repository

# Parent pom
mvn org.apache.maven.plugins:maven-install-plugin:3.0.0-M1:install-file \
-Dfile=cdi-tck-parent-2.0.6.pom -DgroupId=org.jboss.cdi.tck \
-DartifactId=cdi-tck-parent -Dversion=2.0.6 -Dpackaging=pom

# Porting Package APIs for CDI TCK
mvn org.apache.maven.plugins:maven-install-plugin:3.0.0-M1:install-file \
-Dfile=cdi-tck-api-2.0.6.jar -Dsources=cdi-tck-api-2.0.6-sources.jar \
-Djavadoc=cdi-tck-api-2.0.6-javadoc.jar

# CDI TCK Installed Library - test bean archive
mvn org.apache.maven.plugins:maven-install-plugin:3.0.0-M1:install-file \
-Dfile=cdi-tck-ext-lib-2.0.6.jar

# CDI TCK Test Suite
mvn org.apache.maven.plugins:maven-install-plugin:3.0.0-M1:install-file \
-Dfile=cdi-tck-impl-2.0.6.jar -Dsources=cdi-tck-impl-2.0.6-sources.jar