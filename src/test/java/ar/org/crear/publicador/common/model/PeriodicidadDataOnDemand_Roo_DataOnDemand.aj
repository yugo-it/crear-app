// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.Periodicidad;
import ar.org.crear.publicador.common.model.PeriodicidadDataOnDemand;
import ar.org.crear.publicador.server.repository.PeriodicidadRepository;
import ar.org.crear.publicador.server.service.PeriodicidadService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect PeriodicidadDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PeriodicidadDataOnDemand: @Component;
    
    private Random PeriodicidadDataOnDemand.rnd = new SecureRandom();
    
    private List<Periodicidad> PeriodicidadDataOnDemand.data;
    
    @Autowired
    PeriodicidadService PeriodicidadDataOnDemand.periodicidadService;
    
    @Autowired
    PeriodicidadRepository PeriodicidadDataOnDemand.periodicidadRepository;
    
    public Periodicidad PeriodicidadDataOnDemand.getNewTransientPeriodicidad(int index) {
        Periodicidad obj = new Periodicidad();
        setDescripcion(obj, index);
        return obj;
    }
    
    public void PeriodicidadDataOnDemand.setDescripcion(Periodicidad obj, int index) {
        String descripcion = "descripcion_" + index;
        obj.setDescripcion(descripcion);
    }
    
    public Periodicidad PeriodicidadDataOnDemand.getSpecificPeriodicidad(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Periodicidad obj = data.get(index);
        Long id = obj.getId();
        return periodicidadService.findPeriodicidad(id);
    }
    
    public Periodicidad PeriodicidadDataOnDemand.getRandomPeriodicidad() {
        init();
        Periodicidad obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return periodicidadService.findPeriodicidad(id);
    }
    
    public boolean PeriodicidadDataOnDemand.modifyPeriodicidad(Periodicidad obj) {
        return false;
    }
    
    public void PeriodicidadDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = periodicidadService.findPeriodicidadEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Periodicidad' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Periodicidad>();
        for (int i = 0; i < 10; i++) {
            Periodicidad obj = getNewTransientPeriodicidad(i);
            try {
                periodicidadService.savePeriodicidad(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            periodicidadRepository.flush();
            data.add(obj);
        }
    }
    
}
