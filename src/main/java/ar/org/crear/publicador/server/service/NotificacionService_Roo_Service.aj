// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.server.service;

import ar.org.crear.publicador.common.model.Notificacion;
import ar.org.crear.publicador.server.service.NotificacionService;
import java.util.List;

privileged aspect NotificacionService_Roo_Service {
    
    public abstract long NotificacionService.countAllNotificacions();    
    public abstract void NotificacionService.deleteNotificacion(Notificacion notificacion);    
    public abstract Notificacion NotificacionService.findNotificacion(Long id);    
    public abstract List<Notificacion> NotificacionService.findAllNotificacions();    
    public abstract List<Notificacion> NotificacionService.findNotificacionEntries(int firstResult, int maxResults);    
    public abstract void NotificacionService.saveNotificacion(Notificacion notificacion);    
    public abstract Notificacion NotificacionService.updateNotificacion(Notificacion notificacion);    
}
