package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.Area;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = Area.class)
@Controller
@RequestMapping("/areas")
@RooWebScaffold(path = "areas", formBackingObject = Area.class)
public class AreaController {
}
