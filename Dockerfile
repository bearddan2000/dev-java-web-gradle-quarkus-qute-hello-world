FROM gradle:jdk11

WORKDIR /app

ADD --chown=gradle:gradle bin .

ENTRYPOINT ["gradle"]

CMD ["build", "-Dquarkus.package.type=native", "-Dquarkus.native.container-build=quay.io/quarkus/ubi-quarkus-native-image:21.2.0-java11", "quarkusDev"]
