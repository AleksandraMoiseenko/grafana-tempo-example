# grafana-tempo-example

Spring application demonstrating tracing using Grafana, Grafana Tempo, Jaeger, OpenTelemetry, Java 16.

### Run with VM Options

-javaagent:agent/opentelemetry-javaagent-all.jar \
-Dotel.trace.exporter=otlp \
-Dotel.exporter.otlp.endpoint=http://localhost:55680  \
-Dotel.resource.attributes=service.name=grafana-tempo-example \
-Dotel.javaagent.debug=false \
-Dotel.metrics.exporter=none 

![Alt text](docs/vm_options.png)

### Starting Jaeger, Grafana Tempo, Grafana

```sh
docker-compose up -d
```
![Alt text](docs/docker_compose.png)

Jaeger UI http://localhost:16686

![Alt text](docs/jaeger_ui.jpg)

Grafana UI http://localhost:3000

![Alt text](docs/grafana_ui.png)

### Application Endpoint

GET http://localhost:8080/grafana \
Response Body: response

![Alt text](docs/trace_id.png)

Jaeger UI

![Alt text](docs/jaeger_trace_id.png)

Grafana UI

![Alt text](docs/grafana_trace_id.png)

### Links

Agent download link https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/tag/v0.15.0 \
https://reachmnadeem.wordpress.com/2021/02/06/opentelemetry-automatic-instrumentation-of-spring-boot-application-with-grafana-tempo-otlp-port/ \
https://github.com/mnadeem/boot-opentelemetry-tempo \
https://github.com/open-telemetry/opentelemetry-java/blob/main/sdk-extensions/autoconfigure/README.md#jaeger-exporter \
https://reachmnadeem.wordpress.com/2021/01/28/distributed-tracing-using-grafana-tempo-up-and-running-in-windows/