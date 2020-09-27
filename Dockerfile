FROM tomcat:8
MAINTAINER prakash-demo
COPY webapp/target/*.war /usr/share/tomcat/webapps
