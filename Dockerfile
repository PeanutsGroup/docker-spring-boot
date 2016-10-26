FROM openjdk:8

MAINTAINER Buckaroo Cheung <cheung.buckaroo@gmail.com>

ENV SPRING_BOOT_VERSION 1.4.1.RELEASE

RUN \
	mkdir /opt/spring-boot && \
	cd /opt/spring-boot && \
	wget http://repo.spring.io/release/org/springframework/boot/spring-boot-cli/${SPRING_BOOT_VERSION}/spring-boot-cli-${SPRING_BOOT_VERSION}-bin.tar.gz && \
	tar -xvf *.gz && \
	rm -rf *.gz

ENV SPRING_HOME /opt/spring-boot/spring-${SPRING_BOOT_VERSION}
ENV PATH $SPRING_HOME/bin:$PATH

ENTRYPOINT ["spring"]
