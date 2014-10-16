// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.web;

import ar.org.crear.publicador.common.model.Destinatario;
import ar.org.crear.publicador.web.DestinatarioController;
import java.util.List;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.UriComponentsBuilder;

privileged aspect DestinatarioController_Roo_Controller_Json {
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> DestinatarioController.showJson(@PathVariable("id") Long id) {
        Destinatario destinatario = destinatarioService.findDestinatario(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (destinatario == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(destinatario.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> DestinatarioController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<Destinatario> result = destinatarioService.findAllDestinatarios();
        return new ResponseEntity<String>(Destinatario.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> DestinatarioController.createFromJson(@RequestBody String json, UriComponentsBuilder uriBuilder) {
        Destinatario destinatario = Destinatario.fromJsonToDestinatario(json);
        destinatarioService.saveDestinatario(destinatario);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        RequestMapping a = (RequestMapping) getClass().getAnnotation(RequestMapping.class);
        headers.add("Location",uriBuilder.path(a.value()[0]+"/"+destinatario.getId().toString()).build().toUriString());
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> DestinatarioController.createFromJsonArray(@RequestBody String json) {
        for (Destinatario destinatario: Destinatario.fromJsonArrayToDestinatarios(json)) {
            destinatarioService.saveDestinatario(destinatario);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> DestinatarioController.updateFromJson(@RequestBody String json, @PathVariable("id") Long id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        Destinatario destinatario = Destinatario.fromJsonToDestinatario(json);
        destinatario.setId(id);
        if (destinatarioService.updateDestinatario(destinatario) == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> DestinatarioController.deleteFromJson(@PathVariable("id") Long id) {
        Destinatario destinatario = destinatarioService.findDestinatario(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (destinatario == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        destinatarioService.deleteDestinatario(destinatario);
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
}
