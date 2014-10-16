// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.web;

import ar.org.crear.publicador.common.model.Periodicidad;
import ar.org.crear.publicador.server.service.PeriodicidadService;
import ar.org.crear.publicador.web.PeriodicidadController;
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

privileged aspect PeriodicidadController_Roo_Controller {
    
    @Autowired
    PeriodicidadService PeriodicidadController.periodicidadService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PeriodicidadController.create(@Valid Periodicidad periodicidad, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, periodicidad);
            return "periodicidads/create";
        }
        uiModel.asMap().clear();
        periodicidadService.savePeriodicidad(periodicidad);
        return "redirect:/periodicidads/" + encodeUrlPathSegment(periodicidad.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PeriodicidadController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Periodicidad());
        return "periodicidads/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PeriodicidadController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("periodicidad", periodicidadService.findPeriodicidad(id));
        uiModel.addAttribute("itemId", id);
        return "periodicidads/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PeriodicidadController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("periodicidads", Periodicidad.findPeriodicidadEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) periodicidadService.countAllPeriodicidads() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("periodicidads", Periodicidad.findAllPeriodicidads(sortFieldName, sortOrder));
        }
        return "periodicidads/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PeriodicidadController.update(@Valid Periodicidad periodicidad, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, periodicidad);
            return "periodicidads/update";
        }
        uiModel.asMap().clear();
        periodicidadService.updatePeriodicidad(periodicidad);
        return "redirect:/periodicidads/" + encodeUrlPathSegment(periodicidad.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PeriodicidadController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, periodicidadService.findPeriodicidad(id));
        return "periodicidads/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PeriodicidadController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Periodicidad periodicidad = periodicidadService.findPeriodicidad(id);
        periodicidadService.deletePeriodicidad(periodicidad);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/periodicidads";
    }
    
    void PeriodicidadController.populateEditForm(Model uiModel, Periodicidad periodicidad) {
        uiModel.addAttribute("periodicidad", periodicidad);
    }
    
    String PeriodicidadController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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