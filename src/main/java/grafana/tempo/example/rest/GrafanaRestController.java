package grafana.tempo.example.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/grafana")
public class GrafanaRestController {


    @GetMapping
    public String getResponse() {
        return "response";
    }

}
