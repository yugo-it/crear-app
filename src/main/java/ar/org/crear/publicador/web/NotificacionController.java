package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.Notificacion;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = Notificacion.class)
@Controller
@RequestMapping("/notificacions")
@RooWebScaffold(path = "notificacions", formBackingObject = Notificacion.class)
public class NotificacionController {
}
