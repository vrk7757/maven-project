FROM tomcat:8
MAINTAINER prakash-demo
COPY /target/*.war /usr/share/tomcat/webapps
