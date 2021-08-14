package grafana.tempo.example.rest;

import io.opentelemetry.extension.annotations.WithSpan;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/grafana")
public class GrafanaRestController {

    @GetMapping
    @WithSpan
    public String getResponse() {
        return "response";
    }

}
