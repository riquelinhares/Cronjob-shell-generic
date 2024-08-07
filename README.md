# Docker Ubuntu Utility Image

## Overview

This Docker image is built on a minimal Ubuntu 24.10 base and is designed to provide a set of essential networking and debugging tools. It includes utilities such as `bash`, `curl`, `telnet`, `netcat`, `ping`, `traceroute`, and `dnsutils`, making it ideal for troubleshooting and network diagnostics in various environments.

## Features

- **Base Image**: Ubuntu 24.10
- **Installed Packages**:
  - `bash`: A popular Unix shell
  - `curl`: A tool for transferring data with URLs
  - `telnet`: A protocol for accessing remote computers
  - `netcat`: A network utility for reading and writing data
  - `ping`: A tool for checking network connectivity
  - `traceroute`: A utility for tracing network paths
  - `dnsutils`: A collection of DNS utilities

## Running the Image

To use this Docker image, follow these steps:

1. **Build the Docker Image**

   ```sh
   docker build -t ubuntu-bash-curl-dig .

2. **Run a Container**

   ```sh
   docker run -it --rm ubuntu-bash-curl-dig 

## User
The image runs under a non-root user named User with UID 1001.
