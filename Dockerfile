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
RUN useradd -m -u 1001 -d /home User

USER 1001

# Set the default command to bash
CMD ["/bin/bash"]
