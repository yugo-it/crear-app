// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.Adjunto;
import ar.org.crear.publicador.common.model.AdjuntoDataOnDemand;
import ar.org.crear.publicador.server.repository.AdjuntoRepository;
import ar.org.crear.publicador.server.service.AdjuntoService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect AdjuntoDataOnDemand_Roo_DataOnDemand {
    
    declare @type: AdjuntoDataOnDemand: @Component;
    
    private Random AdjuntoDataOnDemand.rnd = new SecureRandom();
    
    private List<Adjunto> AdjuntoDataOnDemand.data;
    
    @Autowired
    AdjuntoService AdjuntoDataOnDemand.adjuntoService;
    
    @Autowired
    AdjuntoRepository AdjuntoDataOnDemand.adjuntoRepository;
    
    public Adjunto AdjuntoDataOnDemand.getNewTransientAdjunto(int index) {
        Adjunto obj = new Adjunto();
        setDescripcion(obj, index);
        setNombreArchivo(obj, index);
        setTamanio(obj, index);
        setTipo(obj, index);
        return obj;
    }
    
    public void AdjuntoDataOnDemand.setDescripcion(Adjunto obj, int index) {
        String descripcion = "descripcion_" + index;
        if (descripcion.length() > 500) {
            descripcion = descripcion.substring(0, 500);
        }
        obj.setDescripcion(descripcion);
    }
    
    public void AdjuntoDataOnDemand.setNombreArchivo(Adjunto obj, int index) {
        String nombreArchivo = "nombreArchivo_" + index;
        if (nombreArchivo.length() > 500) {
            nombreArchivo = nombreArchivo.substring(0, 500);
        }
        obj.setNombreArchivo(nombreArchivo);
    }
    
    public void AdjuntoDataOnDemand.setTamanio(Adjunto obj, int index) {
        Integer tamanio = new Integer(index);
        obj.setTamanio(tamanio);
    }
    
    public void AdjuntoDataOnDemand.setTipo(Adjunto obj, int index) {
        String tipo = "tipo_" + index;
        if (tipo.length() > 20) {
            tipo = tipo.substring(0, 20);
        }
        obj.setTipo(tipo);
    }
    
    public Adjunto AdjuntoDataOnDemand.getSpecificAdjunto(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Adjunto obj = data.get(index);
        Long id = obj.getId();
        return adjuntoService.findAdjunto(id);
    }
    
    public Adjunto AdjuntoDataOnDemand.getRandomAdjunto() {
        init();
        Adjunto obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return adjuntoService.findAdjunto(id);
    }
    
    public boolean AdjuntoDataOnDemand.modifyAdjunto(Adjunto obj) {
        return false;
    }
    
    public void AdjuntoDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = adjuntoService.findAdjuntoEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Adjunto' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Adjunto>();
        for (int i = 0; i < 10; i++) {
            Adjunto obj = getNewTransientAdjunto(i);
            try {
                adjuntoService.saveAdjunto(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            adjuntoRepository.flush();
            data.add(obj);
        }
    }
    
}