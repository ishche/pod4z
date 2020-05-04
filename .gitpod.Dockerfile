FROM gitpod/workspace-full
                    
USER gitpod

RUN sudo apt update && \
    sudo apt install -y openjdk-8-jdk && \
    sudo apt-get clean &&  \
    sudo rm -rf /var/lib/apt/lists/* && \
    sudo rm -rf /var/cache/apt/*
