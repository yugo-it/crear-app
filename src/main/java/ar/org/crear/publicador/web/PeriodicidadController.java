package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.Periodicidad;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = Periodicidad.class)
@Controller
@RequestMapping("/periodicidads")
@RooWebScaffold(path = "periodicidads", formBackingObject = Periodicidad.class)
public class PeriodicidadController {
}
