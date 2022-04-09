FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY $PWD/webapp/target/*.war /usr/local/tomcat/webapps/webapp.war
CMD ["catalina.sh", "run"]

