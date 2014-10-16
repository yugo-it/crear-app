// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.server.service;

import ar.org.crear.publicador.common.model.Tema;
import ar.org.crear.publicador.server.service.TemaService;
import java.util.List;

privileged aspect TemaService_Roo_Service {
    
    public abstract long TemaService.countAllTemas();    
    public abstract void TemaService.deleteTema(Tema tema);    
    public abstract Tema TemaService.findTema(Long id);    
    public abstract List<Tema> TemaService.findAllTemas();    
    public abstract List<Tema> TemaService.findTemaEntries(int firstResult, int maxResults);    
    public abstract void TemaService.saveTema(Tema tema);    
    public abstract Tema TemaService.updateTema(Tema tema);    
}