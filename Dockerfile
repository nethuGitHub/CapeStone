# we are extending everything from tomcat:8.0 image ...
FROM tomcat:8.0
MAINTAINER your_name
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY /var/jenkins_home/workspace/CapstoneBuildWar/target/bank##2.1.0.local.war /usr/local/tomcat/webapps/

#EXPOSE 8080

#CMD ["/opt/tomcat/bin/catalina.sh", "run"]
