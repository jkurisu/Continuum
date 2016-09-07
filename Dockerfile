#FROM jenkins:2.21
FROM jenkins:2.7.3
MAINTAINER Jon Kurisu

USER root
RUN mkdir /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
USER jenkins

#ENV JAVA_OPTS="-Xmx8g"
#ENV JENKINS_OPTS="--handlerCountStartup=100 --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log"
ENV JENKINS_OPTS="--logfile=/var/log/jenkins/jenkins.log"

