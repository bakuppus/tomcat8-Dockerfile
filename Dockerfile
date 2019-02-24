FROM tomcat:8.0

COPY tomcat-users.xml /usr/local/tomcat/conf/

CMD chmod +x /usr/local/tomcat/bin/


CMD ["catalina.sh", "run"]

EXPOSE 8080
