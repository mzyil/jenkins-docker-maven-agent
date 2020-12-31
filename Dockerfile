FROM jenkins/inbound-agent:4.6-1
USER root
RUN apt-get update; apt-get install -y docker.io maven
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"; \
    chmod +x ./kubectl; mv ./kubectl /usr/local/bin/kubectl
USER jenkins
