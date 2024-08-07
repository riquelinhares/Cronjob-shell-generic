# Use a small Ubuntu base image
FROM ubuntu:24.10

# Update package lists and install necessary packages
RUN apt update && \
    apt upgrade -y && \
    apt install -y \
        bash \
        curl \
        telnet \
        netcat-traditional \
        inetutils-ping \
        traceroute \
        dnsutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 

# Create user
RUN useradd -m -u 1001 -d /home User

# Write the MOTD directly into the user's .bashrc
RUN echo 'echo -e "Welcome to your custom Ubuntu container!\\nThis is a Message of the Day (MOTD).\\nSource: https://github.com/riquelinhares/Cronjob-shell-generic" ' >> /home/.bashrc

USER 1001

# Set the default command to bash
CMD ["/bin/bash"]
