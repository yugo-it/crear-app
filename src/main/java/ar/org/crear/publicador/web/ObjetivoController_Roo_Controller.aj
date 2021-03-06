// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.web;

import ar.org.crear.publicador.common.model.Objetivo;
import ar.org.crear.publicador.server.service.MedioAlertaService;
import ar.org.crear.publicador.server.service.MedioService;
import ar.org.crear.publicador.server.service.ObjetivoService;
import ar.org.crear.publicador.server.service.PeriodicidadService;
import ar.org.crear.publicador.web.ObjetivoController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ObjetivoController_Roo_Controller {
    
    @Autowired
    ObjetivoService ObjetivoController.objetivoService;
    
    @Autowired
    MedioService ObjetivoController.medioService;
    
    @Autowired
    MedioAlertaService ObjetivoController.medioAlertaService;
    
    @Autowired
    PeriodicidadService ObjetivoController.periodicidadService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ObjetivoController.create(@Valid Objetivo objetivo, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, objetivo);
            return "objetivoes/create";
        }
        uiModel.asMap().clear();
        objetivoService.saveObjetivo(objetivo);
        return "redirect:/objetivoes/" + encodeUrlPathSegment(objetivo.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ObjetivoController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Objetivo());
        return "objetivoes/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ObjetivoController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("objetivo", objetivoService.findObjetivo(id));
        uiModel.addAttribute("itemId", id);
        return "objetivoes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ObjetivoController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("objetivoes", Objetivo.findObjetivoEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) objetivoService.countAllObjetivoes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("objetivoes", Objetivo.findAllObjetivoes(sortFieldName, sortOrder));
        }
        return "objetivoes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ObjetivoController.update(@Valid Objetivo objetivo, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, objetivo);
            return "objetivoes/update";
        }
        uiModel.asMap().clear();
        objetivoService.updateObjetivo(objetivo);
        return "redirect:/objetivoes/" + encodeUrlPathSegment(objetivo.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ObjetivoController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, objetivoService.findObjetivo(id));
        return "objetivoes/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ObjetivoController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Objetivo objetivo = objetivoService.findObjetivo(id);
        objetivoService.deleteObjetivo(objetivo);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/objetivoes";
    }
    
    void ObjetivoController.populateEditForm(Model uiModel, Objetivo objetivo) {
        uiModel.addAttribute("objetivo", objetivo);
        uiModel.addAttribute("medios", medioService.findAllMedios());
        uiModel.addAttribute("medioalertas", medioAlertaService.findAllMedioAlertas());
        uiModel.addAttribute("periodicidads", periodicidadService.findAllPeriodicidads());
    }
    
    String ObjetivoController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
