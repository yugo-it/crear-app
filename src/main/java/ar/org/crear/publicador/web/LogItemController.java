package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.security.LogItem;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = LogItem.class)
@Controller
@RequestMapping("/logitems")
@RooWebScaffold(path = "logitems", formBackingObject = LogItem.class)
public class LogItemController {
}
