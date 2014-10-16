package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.Tema;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = Tema.class)
@Controller
@RequestMapping("/temas")
@RooWebScaffold(path = "temas", formBackingObject = Tema.class)
public class TemaController {
}
