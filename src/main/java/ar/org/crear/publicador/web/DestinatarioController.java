package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.Destinatario;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = Destinatario.class)
@Controller
@RequestMapping("/destinatarios")
@RooWebScaffold(path = "destinatarios", formBackingObject = Destinatario.class)
public class DestinatarioController {
}
