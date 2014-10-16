package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.Objetivo;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = Objetivo.class)
@Controller
@RequestMapping("/objetivoes")
@RooWebScaffold(path = "objetivoes", formBackingObject = Objetivo.class)
public class ObjetivoController {
}
