FROM openjdk:latest
ENV OTEL_AGENT_VERSION=0.16.1 \
    OTEL_AGENT_JAR_FILE=opentelemetry-javaagent-all-0.17.0.jar
COPY ./target/grafana-tempo-example-1.0.0.jar grafana-tempo-example-1.0.0.jar
COPY ./opentelemetry-javaagent-all-0.17.0.jar opentelemetry-javaagent-all-0.17.0.jar
ENTRYPOINT ["java", "-jar", "/grafana-tempo-example-1.0.0.jar"]
EXPOSE 8080
ENV JAVA_OPTS "-server \
  -Dotel.traces.exporter=jaeger \
  -Dotel.exporter.jaeger.endpoint=http://tempo:14250 \
  -Dotel.metrics.exporter=none \
  -Dotel.resource.attributes="service.name=grafana-tempo-example" \
  -Dotel.javaagent.debug=false \
  -javaagent:opentelemetry-javaagent-all-0.17.0.jar"
