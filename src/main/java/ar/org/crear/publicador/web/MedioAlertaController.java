package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.MedioAlerta;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = MedioAlerta.class)
@Controller
@RequestMapping("/medioalertas")
@RooWebScaffold(path = "medioalertas", formBackingObject = MedioAlerta.class)
public class MedioAlertaController {
}
