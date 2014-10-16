package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.security.LogUser;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = LogUser.class)
@Controller
@RequestMapping("/logusers")
@RooWebScaffold(path = "logusers", formBackingObject = LogUser.class)
public class LogUserController {
}
