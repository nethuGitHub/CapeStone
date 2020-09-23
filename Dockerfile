
FROM tomcat:8.0
MAINTAINER 118237
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY ./var/jenkins_home/workspace/CapstoneBuildWar/target/bank##2.1.0.local.war /usr/local/tomcat/webapps/
