FROM jmeter-base

MAINTAINER halit <hozdemir>

WORKDIR $JMETER_HOME

RUN mkdir scripts

ADD ["./test.jmx", "$JMETER_HOME/scripts"]

EXPOSE 60000


