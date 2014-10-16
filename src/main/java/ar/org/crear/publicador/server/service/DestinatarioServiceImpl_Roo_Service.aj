// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.server.service;

import ar.org.crear.publicador.common.model.Destinatario;
import ar.org.crear.publicador.server.repository.DestinatarioRepository;
import ar.org.crear.publicador.server.service.DestinatarioServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DestinatarioServiceImpl_Roo_Service {
    
    declare @type: DestinatarioServiceImpl: @Service;
    
    declare @type: DestinatarioServiceImpl: @Transactional;
    
    @Autowired
    DestinatarioRepository DestinatarioServiceImpl.destinatarioRepository;
    
    public long DestinatarioServiceImpl.countAllDestinatarios() {
        return destinatarioRepository.count();
    }
    
    public void DestinatarioServiceImpl.deleteDestinatario(Destinatario destinatario) {
        destinatarioRepository.delete(destinatario);
    }
    
    public Destinatario DestinatarioServiceImpl.findDestinatario(Long id) {
        return destinatarioRepository.findOne(id);
    }
    
    public List<Destinatario> DestinatarioServiceImpl.findAllDestinatarios() {
        return destinatarioRepository.findAll();
    }
    
    public List<Destinatario> DestinatarioServiceImpl.findDestinatarioEntries(int firstResult, int maxResults) {
        return destinatarioRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void DestinatarioServiceImpl.saveDestinatario(Destinatario destinatario) {
        destinatarioRepository.save(destinatario);
    }
    
    public Destinatario DestinatarioServiceImpl.updateDestinatario(Destinatario destinatario) {
        return destinatarioRepository.save(destinatario);
    }
    
}