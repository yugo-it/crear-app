package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.Medio;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = Medio.class)
@Controller
@RequestMapping("/medios")
@RooWebScaffold(path = "medios", formBackingObject = Medio.class)
public class MedioController {
}
