FROM alpine
WORKDIR /root/geocode
COPY ./src/photon-0.3.5.jar /root/geocode/
COPY ./src/photon_data.zip /root/geocode

RUN apk add unzip
RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

RUN unzip photon_data.zip

CMD ["java", "-jar", "photon-0.3.5.jar"]