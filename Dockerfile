
FROM tomcat:8.0
MAINTAINER 118237
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY ./target/digitalbank-2.1.0.local.war /usr/local/tomcat/webapps/
