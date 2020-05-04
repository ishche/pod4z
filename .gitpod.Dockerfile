FROM gitpod/workspace-full
                    
USER gitpod

RUN sudo apt update && \
    sudo apt install -y openjdk-8-jdk && \
    sudo apt-get clean &&  \
    sudo rm -rf /var/lib/apt/lists/* && \
    sudo rm -rf /var/cache/apt/* && \
    rm /home/gitpod/.sdkman/candidates/java/current/bin/java && \
    ln -s /usr/bin/java /home/gitpod/.sdkman/candidates/java/current/bin/java
