package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.Publicacion;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = Publicacion.class)
@Controller
@RequestMapping("/publicacions")
@RooWebScaffold(path = "publicacions", formBackingObject = Publicacion.class)
public class PublicacionController {
}
