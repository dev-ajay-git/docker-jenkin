FROM tomcat:9.0
RUN apt update -y && apt install -y  git wget 
WORKDIR /app
RUN git clone https://github.com/dev-ajay-git/tomcat-config.git
COPY /app/tomcat-config/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY /app/tomcat-config/context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml

COPY target/webapp.war /usr/local/tomcat/webapps/webapp.war

