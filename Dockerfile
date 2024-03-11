FROM tomcat:8.0.20-jre8
copy target/*.war /usr/local/tomacat/webapps/maven-web-app.war
Expose 8080
