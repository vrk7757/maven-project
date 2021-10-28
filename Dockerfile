FROM tomcat
MAINTAINER vijay
COPY webapp/target/webapp.war /usr/local/tomcat/webapps
