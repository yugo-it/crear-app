package ar.org.crear.publicador.web;
import ar.org.crear.publicador.common.model.security.LogUserRole;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = LogUserRole.class)
@Controller
@RequestMapping("/loguserroles")
@RooWebScaffold(path = "loguserroles", formBackingObject = LogUserRole.class)
public class LogUserRoleController {
}
