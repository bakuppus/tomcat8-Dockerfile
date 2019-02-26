FROM tomcat:8.0

COPY tomcat-users.xml /usr/local/tomcat/conf/
MKDIR /usr/local/tomcat/webapps/dev
COPY /var/lib/jenkins/workspace/deploy/target/spring-boot-sample-web-groovy-templates-2.1.2.RELEASE.jar  /usr/local/tomcat/webapps/dev

CMD chmod +x /usr/local/tomcat/bin/


CMD ["catalina.sh", "run"]

EXPOSE 8080
