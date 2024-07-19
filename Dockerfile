# Use a small Ubuntu base image
FROM ubuntu:24.10

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y \
        bash \
        curl \
        dnsutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the default command to bash
CMD ["/bin/bash"]
