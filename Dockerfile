FROM jenkins

# Retrieve Root Permission
USER root

ADD install_deps.sh /
RUN chmod +x /install_deps.sh;/install_deps.sh;

#RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

RUN ["groupmod", "-g", "1802", "jenkins"]
RUN ["usermod", "-u", "1802", "jenkins"]

# Get Back to Jenkins User
USER jenkins

