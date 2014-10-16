package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.TareaProgramada;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = TareaProgramada.class)
@Controller
@RequestMapping("/tareaprogramadas")
@RooWebScaffold(path = "tareaprogramadas", formBackingObject = TareaProgramada.class)
public class TareaProgramadaController {
}
