FROM debian:bullseye-slim

RUN apt-get update
RUN apt-get install -y iputils-ping
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y git
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
RUN apt-get install -y net-tools
RUN apt-get install -y gpg
RUN curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | tee /usr/share/keyrings/helm.gpg > /dev/null
RUN apt-get install -y apt-transport-https
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | tee /etc/apt/sources.list.d/helm-stable-debian.list
RUN apt-get update
RUN apt-get install -y helm
RUN apt-get install -y nmap
RUN apt-get install -y ansible
RUN apt-get install -y nmap


WORKDIR /k3s

ENTRYPOINT ["tail", "-f", "/dev/null"]