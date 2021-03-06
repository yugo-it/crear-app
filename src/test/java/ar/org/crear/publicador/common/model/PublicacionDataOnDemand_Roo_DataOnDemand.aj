// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.Publicacion;
import ar.org.crear.publicador.common.model.PublicacionDataOnDemand;
import ar.org.crear.publicador.server.service.PublicacionService;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect PublicacionDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PublicacionDataOnDemand: @Component;
    
    private Random PublicacionDataOnDemand.rnd = new SecureRandom();
    
    private List<Publicacion> PublicacionDataOnDemand.data;
    
    @Autowired
    PublicacionService PublicacionDataOnDemand.publicacionService;
    
    public Publicacion PublicacionDataOnDemand.getNewTransientPublicacion(int index) {
        Publicacion obj = new Publicacion();
        setFecha(obj, index);
        setLink(obj, index);
        return obj;
    }
    
    public void PublicacionDataOnDemand.setFecha(Publicacion obj, int index) {
        Date fecha = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFecha(fecha);
    }
    
    public void PublicacionDataOnDemand.setLink(Publicacion obj, int index) {
        String link = "linkxxxx_" + index;
        if (link.length() > 500) {
            link = link.substring(0, 500);
        }
        obj.setLink(link);
    }
    
    public Publicacion PublicacionDataOnDemand.getSpecificPublicacion(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Publicacion obj = data.get(index);
        Long id = obj.getId();
        return publicacionService.findPublicacion(id);
    }
    
    public Publicacion PublicacionDataOnDemand.getRandomPublicacion() {
        init();
        Publicacion obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return publicacionService.findPublicacion(id);
    }
    
    public boolean PublicacionDataOnDemand.modifyPublicacion(Publicacion obj) {
        return false;
    }
    
    public void PublicacionDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = publicacionService.findPublicacionEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Publicacion' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Publicacion>();
        for (int i = 0; i < 10; i++) {
            Publicacion obj = getNewTransientPublicacion(i);
            try {
                publicacionService.savePublicacion(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
