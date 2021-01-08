FROM java:8

MAINTAINER halit <hozdemir>

RUN wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-5.2.1.tgz
RUN tar -xvzf apache-jmeter-5.2.1.tgz
RUN rm apache-jmeter-5.2.1.tgz

RUN mv apache-jmeter-5.2.1 /jmeter

ADD ["./rmi_keystore.jks", "/jmeter/bin/"]
ADD ["./user.properties", "/jmeter/bin/"]
ADD ["./JMeter-InfluxDB-Writer-plugin-1.2.jar", "/jmeter/lib/ext"]

ENV JMETER_HOME /jmeter

ENV PATH $JMETER_HOME/bin:$PATH

