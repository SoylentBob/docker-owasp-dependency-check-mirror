FROM openjdk:8-jre-alpine

VOLUME /var/nist-mirror/

ADD https://github.com/stevespringett/nist-data-mirror/releases/download/nist-data-mirror-1.2.0/nist-data-mirror-1.2.0.jar ./

ENTRYPOINT ["java", "-jar", "nist-data-mirror-1.2.0.jar", "/var/nist-mirror"]
