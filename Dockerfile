FROM  tomcat:9



WORKDIR /usr/local/tomcat
RUN mb webapps.dist/* webapps


COPY target/welcomeapp.war webapps/

EXPOSE 8080

CMD ["/usr/local/bin/catalina.sh","run"]
