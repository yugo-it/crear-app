package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.Adjunto;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = Adjunto.class)
@Controller
@RequestMapping("/adjuntoes")
@RooWebScaffold(path = "adjuntoes", formBackingObject = Adjunto.class)
public class AdjuntoController {
}
