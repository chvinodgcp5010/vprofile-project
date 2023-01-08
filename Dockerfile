#https://github.com/chvinodgcp5010/vprofile-project/blob/local-setup/Jenkinsfile
##Here we got .war file from jenkinsfile "https://github.com/chvinodgcp5010/vprofile-project/blob/local-setup/Jenkinsfile" ->stage mvn install 

FROM tomcat:8-jre8
RUN rm -rf /usr/local/tomcat/webapss/*
COPY target/vprofile-v1.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
VOLUME /usr/local/tomcat/webapps
