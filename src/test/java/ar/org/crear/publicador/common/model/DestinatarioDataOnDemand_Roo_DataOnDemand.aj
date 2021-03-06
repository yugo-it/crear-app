// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.Destinatario;
import ar.org.crear.publicador.common.model.DestinatarioDataOnDemand;
import ar.org.crear.publicador.server.repository.DestinatarioRepository;
import ar.org.crear.publicador.server.service.DestinatarioService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect DestinatarioDataOnDemand_Roo_DataOnDemand {
    
    declare @type: DestinatarioDataOnDemand: @Component;
    
    private Random DestinatarioDataOnDemand.rnd = new SecureRandom();
    
    private List<Destinatario> DestinatarioDataOnDemand.data;
    
    @Autowired
    DestinatarioService DestinatarioDataOnDemand.destinatarioService;
    
    @Autowired
    DestinatarioRepository DestinatarioDataOnDemand.destinatarioRepository;
    
    public Destinatario DestinatarioDataOnDemand.getNewTransientDestinatario(int index) {
        Destinatario obj = new Destinatario();
        return obj;
    }
    
    public Destinatario DestinatarioDataOnDemand.getSpecificDestinatario(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Destinatario obj = data.get(index);
        Long id = obj.getId();
        return destinatarioService.findDestinatario(id);
    }
    
    public Destinatario DestinatarioDataOnDemand.getRandomDestinatario() {
        init();
        Destinatario obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return destinatarioService.findDestinatario(id);
    }
    
    public boolean DestinatarioDataOnDemand.modifyDestinatario(Destinatario obj) {
        return false;
    }
    
    public void DestinatarioDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = destinatarioService.findDestinatarioEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Destinatario' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Destinatario>();
        for (int i = 0; i < 10; i++) {
            Destinatario obj = getNewTransientDestinatario(i);
            try {
                destinatarioService.saveDestinatario(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            destinatarioRepository.flush();
            data.add(obj);
        }
    }
    
}
