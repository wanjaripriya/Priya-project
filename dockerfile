FROM maven
COPY . .
RUN mvn clean install
FROM tomcat
COPY --from=0 /target/LoginWebApp.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh","run"]