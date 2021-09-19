FROM debian
ENV DEBIAN_FRONTEND=noninteractive

# Install OpenJDK
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get install -y openjfx && \
    apt-get install -y ant && \ 
    apt-get clean;

# Setup JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/
RUN export JAVA_HOME

WORKDIR /apps
COPY . /apps
CMD tail -f /dev/null