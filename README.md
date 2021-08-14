# grafana-tempo-example

Spring application demonstrating tracing using Grafana Tempo, Jaeger, OpenTelemetry, Java 16.

### Run

```sh
mvn clean spring-boot:run
```

### VM Options

-javaagent:opentelemetry-javaagent-all.jar \
-Dotel.trace.exporter=jaeger \
-Dotel.exporter.otlp.endpoint=http://localhost:14250 \
-Dotel.resource.attributes=service.name=grafana-tempo-example \
-Dotel.javaagent.debug=false \
-Dotel.metrics.exporter=none

![Alt text](docs/vm_options.png)

# Build

```sh
mvn clean install
```

Project uses Spotify plugin to generate Dockerfile in /target/docker/Dockerfile

### Starting Jaeger, Grafana Tempo

```sh
docker-compose up -d
```
![Alt text](docs/docker-compose.png)

Jaeger UI http://localhost:16686

![Alt text](docs/jaeger_ui.jpg)

### Application Endpoint

GET http://localhost:8080/grafana \
Response Body: response

![Alt text](docs/trace_id.png)

### Links

Agent download link https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/tag/v0.15.0 \
https://reachmnadeem.wordpress.com/2021/02/06/opentelemetry-automatic-instrumentation-of-spring-boot-application-with-grafana-tempo-otlp-port/ \
https://github.com/mnadeem/boot-opentelemetry-tempo \
https://github.com/open-telemetry/opentelemetry-java/blob/main/sdk-extensions/autoconfigure/README.md#jaeger-exporter