# Use Ubuntu 24.04 LTS as the base image
FROM ubuntu:24.04

# Set the maintainer label (optional)
LABEL maintainer="Sibi <your_email@example.com>"

# Set non-interactive mode for apt to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install the required tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc-arm-linux-gnueabihf \
    qemu-user \ 
    libc6-dev-armhf-cross \
    gdb-multiarch \
    file \
    net-tools \
    gedit \
    nano \
    ufw \
    sudo \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Create a workspace directory
RUN mkdir -p /home/workspace

# Set the default working directory to the workspace
WORKDIR /home/workspace

# Create 'root' user explicitly (if needed) 

# Add a colored Bash prompt for root and other users
RUN sed -i '1i force_color_prompt=yes' /root/.bashrc && \
    echo "PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$ '" >> /root/.bashrc

# Set the default command to run when the container starts
CMD ["/bin/bash"]