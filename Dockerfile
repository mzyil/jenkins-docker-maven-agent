FROM jenkins/inbound-agent:4.6-1
USER root
RUN apt-get update; apt-get install -y docker.io maven
USER jenkins
