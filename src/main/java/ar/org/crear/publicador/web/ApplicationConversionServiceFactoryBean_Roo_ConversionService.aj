// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.web;

import ar.org.crear.publicador.common.model.Adjunto;
import ar.org.crear.publicador.common.model.Area;
import ar.org.crear.publicador.common.model.Destinatario;
import ar.org.crear.publicador.common.model.Medio;
import ar.org.crear.publicador.common.model.MedioAlerta;
import ar.org.crear.publicador.common.model.Notificacion;
import ar.org.crear.publicador.common.model.Objetivo;
import ar.org.crear.publicador.common.model.Periodicidad;
import ar.org.crear.publicador.common.model.Publicacion;
import ar.org.crear.publicador.common.model.TareaProgramada;
import ar.org.crear.publicador.common.model.Tema;
import ar.org.crear.publicador.common.model.security.LogItem;
import ar.org.crear.publicador.common.model.security.LogUser;
import ar.org.crear.publicador.common.model.security.LogUserRole;
import ar.org.crear.publicador.server.service.AdjuntoService;
import ar.org.crear.publicador.server.service.AreaService;
import ar.org.crear.publicador.server.service.DestinatarioService;
import ar.org.crear.publicador.server.service.MedioAlertaService;
import ar.org.crear.publicador.server.service.MedioService;
import ar.org.crear.publicador.server.service.NotificacionService;
import ar.org.crear.publicador.server.service.ObjetivoService;
import ar.org.crear.publicador.server.service.PeriodicidadService;
import ar.org.crear.publicador.server.service.PublicacionService;
import ar.org.crear.publicador.server.service.TareaProgramadaService;
import ar.org.crear.publicador.server.service.TemaService;
import ar.org.crear.publicador.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    AdjuntoService ApplicationConversionServiceFactoryBean.adjuntoService;
    
    @Autowired
    AreaService ApplicationConversionServiceFactoryBean.areaService;
    
    @Autowired
    DestinatarioService ApplicationConversionServiceFactoryBean.destinatarioService;
    
    @Autowired
    MedioService ApplicationConversionServiceFactoryBean.medioService;
    
    @Autowired
    MedioAlertaService ApplicationConversionServiceFactoryBean.medioAlertaService;
    
    @Autowired
    NotificacionService ApplicationConversionServiceFactoryBean.notificacionService;
    
    @Autowired
    ObjetivoService ApplicationConversionServiceFactoryBean.objetivoService;
    
    @Autowired
    PeriodicidadService ApplicationConversionServiceFactoryBean.periodicidadService;
    
    @Autowired
    PublicacionService ApplicationConversionServiceFactoryBean.publicacionService;
    
    @Autowired
    TareaProgramadaService ApplicationConversionServiceFactoryBean.tareaProgramadaService;
    
    @Autowired
    TemaService ApplicationConversionServiceFactoryBean.temaService;
    
    public Converter<Adjunto, String> ApplicationConversionServiceFactoryBean.getAdjuntoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.Adjunto, java.lang.String>() {
            public String convert(Adjunto adjunto) {
                return new StringBuilder().append(adjunto.getTipo()).append(' ').append(adjunto.getTamanio()).append(' ').append(adjunto.getDescripcion()).append(' ').append(adjunto.getNombreArchivo()).toString();
            }
        };
    }
    
    public Converter<Long, Adjunto> ApplicationConversionServiceFactoryBean.getIdToAdjuntoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.Adjunto>() {
            public ar.org.crear.publicador.common.model.Adjunto convert(java.lang.Long id) {
                return adjuntoService.findAdjunto(id);
            }
        };
    }
    
    public Converter<String, Adjunto> ApplicationConversionServiceFactoryBean.getStringToAdjuntoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.Adjunto>() {
            public ar.org.crear.publicador.common.model.Adjunto convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Adjunto.class);
            }
        };
    }
    
    public Converter<Area, String> ApplicationConversionServiceFactoryBean.getAreaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.Area, java.lang.String>() {
            public String convert(Area area) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Area> ApplicationConversionServiceFactoryBean.getIdToAreaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.Area>() {
            public ar.org.crear.publicador.common.model.Area convert(java.lang.Long id) {
                return areaService.findArea(id);
            }
        };
    }
    
    public Converter<String, Area> ApplicationConversionServiceFactoryBean.getStringToAreaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.Area>() {
            public ar.org.crear.publicador.common.model.Area convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Area.class);
            }
        };
    }
    
    public Converter<Destinatario, String> ApplicationConversionServiceFactoryBean.getDestinatarioToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.Destinatario, java.lang.String>() {
            public String convert(Destinatario destinatario) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Destinatario> ApplicationConversionServiceFactoryBean.getIdToDestinatarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.Destinatario>() {
            public ar.org.crear.publicador.common.model.Destinatario convert(java.lang.Long id) {
                return destinatarioService.findDestinatario(id);
            }
        };
    }
    
    public Converter<String, Destinatario> ApplicationConversionServiceFactoryBean.getStringToDestinatarioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.Destinatario>() {
            public ar.org.crear.publicador.common.model.Destinatario convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Destinatario.class);
            }
        };
    }
    
    public Converter<Medio, String> ApplicationConversionServiceFactoryBean.getMedioToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.Medio, java.lang.String>() {
            public String convert(Medio medio) {
                return new StringBuilder().append(medio.getDescripcion()).append(' ').append(medio.getTipo()).append(' ').append(medio.getUrl()).toString();
            }
        };
    }
    
    public Converter<Long, Medio> ApplicationConversionServiceFactoryBean.getIdToMedioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.Medio>() {
            public ar.org.crear.publicador.common.model.Medio convert(java.lang.Long id) {
                return medioService.findMedio(id);
            }
        };
    }
    
    public Converter<String, Medio> ApplicationConversionServiceFactoryBean.getStringToMedioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.Medio>() {
            public ar.org.crear.publicador.common.model.Medio convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Medio.class);
            }
        };
    }
    
    public Converter<MedioAlerta, String> ApplicationConversionServiceFactoryBean.getMedioAlertaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.MedioAlerta, java.lang.String>() {
            public String convert(MedioAlerta medioAlerta) {
                return new StringBuilder().append(medioAlerta.getDescripcion()).toString();
            }
        };
    }
    
    public Converter<Long, MedioAlerta> ApplicationConversionServiceFactoryBean.getIdToMedioAlertaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.MedioAlerta>() {
            public ar.org.crear.publicador.common.model.MedioAlerta convert(java.lang.Long id) {
                return medioAlertaService.findMedioAlerta(id);
            }
        };
    }
    
    public Converter<String, MedioAlerta> ApplicationConversionServiceFactoryBean.getStringToMedioAlertaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.MedioAlerta>() {
            public ar.org.crear.publicador.common.model.MedioAlerta convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), MedioAlerta.class);
            }
        };
    }
    
    public Converter<Notificacion, String> ApplicationConversionServiceFactoryBean.getNotificacionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.Notificacion, java.lang.String>() {
            public String convert(Notificacion notificacion) {
                return new StringBuilder().append(notificacion.getDescripcion()).toString();
            }
        };
    }
    
    public Converter<Long, Notificacion> ApplicationConversionServiceFactoryBean.getIdToNotificacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.Notificacion>() {
            public ar.org.crear.publicador.common.model.Notificacion convert(java.lang.Long id) {
                return notificacionService.findNotificacion(id);
            }
        };
    }
    
    public Converter<String, Notificacion> ApplicationConversionServiceFactoryBean.getStringToNotificacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.Notificacion>() {
            public ar.org.crear.publicador.common.model.Notificacion convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Notificacion.class);
            }
        };
    }
    
    public Converter<Objetivo, String> ApplicationConversionServiceFactoryBean.getObjetivoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.Objetivo, java.lang.String>() {
            public String convert(Objetivo objetivo) {
                return new StringBuilder().append(objetivo.getMinimo()).append(' ').append(objetivo.getMaximo()).toString();
            }
        };
    }
    
    public Converter<Long, Objetivo> ApplicationConversionServiceFactoryBean.getIdToObjetivoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.Objetivo>() {
            public ar.org.crear.publicador.common.model.Objetivo convert(java.lang.Long id) {
                return objetivoService.findObjetivo(id);
            }
        };
    }
    
    public Converter<String, Objetivo> ApplicationConversionServiceFactoryBean.getStringToObjetivoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.Objetivo>() {
            public ar.org.crear.publicador.common.model.Objetivo convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Objetivo.class);
            }
        };
    }
    
    public Converter<Periodicidad, String> ApplicationConversionServiceFactoryBean.getPeriodicidadToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.Periodicidad, java.lang.String>() {
            public String convert(Periodicidad periodicidad) {
                return new StringBuilder().append(periodicidad.getDescripcion()).toString();
            }
        };
    }
    
    public Converter<Long, Periodicidad> ApplicationConversionServiceFactoryBean.getIdToPeriodicidadConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.Periodicidad>() {
            public ar.org.crear.publicador.common.model.Periodicidad convert(java.lang.Long id) {
                return periodicidadService.findPeriodicidad(id);
            }
        };
    }
    
    public Converter<String, Periodicidad> ApplicationConversionServiceFactoryBean.getStringToPeriodicidadConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.Periodicidad>() {
            public ar.org.crear.publicador.common.model.Periodicidad convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Periodicidad.class);
            }
        };
    }
    
    public Converter<Publicacion, String> ApplicationConversionServiceFactoryBean.getPublicacionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.Publicacion, java.lang.String>() {
            public String convert(Publicacion publicacion) {
                return new StringBuilder().append(publicacion.getFecha()).append(' ').append(publicacion.getLink()).toString();
            }
        };
    }
    
    public Converter<Long, Publicacion> ApplicationConversionServiceFactoryBean.getIdToPublicacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.Publicacion>() {
            public ar.org.crear.publicador.common.model.Publicacion convert(java.lang.Long id) {
                return publicacionService.findPublicacion(id);
            }
        };
    }
    
    public Converter<String, Publicacion> ApplicationConversionServiceFactoryBean.getStringToPublicacionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.Publicacion>() {
            public ar.org.crear.publicador.common.model.Publicacion convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Publicacion.class);
            }
        };
    }
    
    public Converter<TareaProgramada, String> ApplicationConversionServiceFactoryBean.getTareaProgramadaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.TareaProgramada, java.lang.String>() {
            public String convert(TareaProgramada tareaProgramada) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, TareaProgramada> ApplicationConversionServiceFactoryBean.getIdToTareaProgramadaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.TareaProgramada>() {
            public ar.org.crear.publicador.common.model.TareaProgramada convert(java.lang.Long id) {
                return tareaProgramadaService.findTareaProgramada(id);
            }
        };
    }
    
    public Converter<String, TareaProgramada> ApplicationConversionServiceFactoryBean.getStringToTareaProgramadaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.TareaProgramada>() {
            public ar.org.crear.publicador.common.model.TareaProgramada convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), TareaProgramada.class);
            }
        };
    }
    
    public Converter<Tema, String> ApplicationConversionServiceFactoryBean.getTemaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.Tema, java.lang.String>() {
            public String convert(Tema tema) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Tema> ApplicationConversionServiceFactoryBean.getIdToTemaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.Tema>() {
            public ar.org.crear.publicador.common.model.Tema convert(java.lang.Long id) {
                return temaService.findTema(id);
            }
        };
    }
    
    public Converter<String, Tema> ApplicationConversionServiceFactoryBean.getStringToTemaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.Tema>() {
            public ar.org.crear.publicador.common.model.Tema convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Tema.class);
            }
        };
    }
    
    public Converter<LogItem, String> ApplicationConversionServiceFactoryBean.getLogItemToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.security.LogItem, java.lang.String>() {
            public String convert(LogItem logItem) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, LogItem> ApplicationConversionServiceFactoryBean.getIdToLogItemConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.security.LogItem>() {
            public ar.org.crear.publicador.common.model.security.LogItem convert(java.lang.Long id) {
                return LogItem.findLogItem(id);
            }
        };
    }
    
    public Converter<String, LogItem> ApplicationConversionServiceFactoryBean.getStringToLogItemConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.security.LogItem>() {
            public ar.org.crear.publicador.common.model.security.LogItem convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogItem.class);
            }
        };
    }
    
    public Converter<LogUser, String> ApplicationConversionServiceFactoryBean.getLogUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.security.LogUser, java.lang.String>() {
            public String convert(LogUser logUser) {
                return new StringBuilder().append(logUser.getUsername()).append(' ').append(logUser.getPassword()).toString();
            }
        };
    }
    
    public Converter<Long, LogUser> ApplicationConversionServiceFactoryBean.getIdToLogUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.security.LogUser>() {
            public ar.org.crear.publicador.common.model.security.LogUser convert(java.lang.Long id) {
                return LogUser.findLogUser(id);
            }
        };
    }
    
    public Converter<String, LogUser> ApplicationConversionServiceFactoryBean.getStringToLogUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.security.LogUser>() {
            public ar.org.crear.publicador.common.model.security.LogUser convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogUser.class);
            }
        };
    }
    
    public Converter<LogUserRole, String> ApplicationConversionServiceFactoryBean.getLogUserRoleToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<ar.org.crear.publicador.common.model.security.LogUserRole, java.lang.String>() {
            public String convert(LogUserRole logUserRole) {
                return new StringBuilder().append(logUserRole.getRoleName()).toString();
            }
        };
    }
    
    public Converter<Long, LogUserRole> ApplicationConversionServiceFactoryBean.getIdToLogUserRoleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, ar.org.crear.publicador.common.model.security.LogUserRole>() {
            public ar.org.crear.publicador.common.model.security.LogUserRole convert(java.lang.Long id) {
                return LogUserRole.findLogUserRole(id);
            }
        };
    }
    
    public Converter<String, LogUserRole> ApplicationConversionServiceFactoryBean.getStringToLogUserRoleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, ar.org.crear.publicador.common.model.security.LogUserRole>() {
            public ar.org.crear.publicador.common.model.security.LogUserRole convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LogUserRole.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAdjuntoToStringConverter());
        registry.addConverter(getIdToAdjuntoConverter());
        registry.addConverter(getStringToAdjuntoConverter());
        registry.addConverter(getAreaToStringConverter());
        registry.addConverter(getIdToAreaConverter());
        registry.addConverter(getStringToAreaConverter());
        registry.addConverter(getDestinatarioToStringConverter());
        registry.addConverter(getIdToDestinatarioConverter());
        registry.addConverter(getStringToDestinatarioConverter());
        registry.addConverter(getMedioToStringConverter());
        registry.addConverter(getIdToMedioConverter());
        registry.addConverter(getStringToMedioConverter());
        registry.addConverter(getMedioAlertaToStringConverter());
        registry.addConverter(getIdToMedioAlertaConverter());
        registry.addConverter(getStringToMedioAlertaConverter());
        registry.addConverter(getNotificacionToStringConverter());
        registry.addConverter(getIdToNotificacionConverter());
        registry.addConverter(getStringToNotificacionConverter());
        registry.addConverter(getObjetivoToStringConverter());
        registry.addConverter(getIdToObjetivoConverter());
        registry.addConverter(getStringToObjetivoConverter());
        registry.addConverter(getPeriodicidadToStringConverter());
        registry.addConverter(getIdToPeriodicidadConverter());
        registry.addConverter(getStringToPeriodicidadConverter());
        registry.addConverter(getPublicacionToStringConverter());
        registry.addConverter(getIdToPublicacionConverter());
        registry.addConverter(getStringToPublicacionConverter());
        registry.addConverter(getTareaProgramadaToStringConverter());
        registry.addConverter(getIdToTareaProgramadaConverter());
        registry.addConverter(getStringToTareaProgramadaConverter());
        registry.addConverter(getTemaToStringConverter());
        registry.addConverter(getIdToTemaConverter());
        registry.addConverter(getStringToTemaConverter());
        registry.addConverter(getLogItemToStringConverter());
        registry.addConverter(getIdToLogItemConverter());
        registry.addConverter(getStringToLogItemConverter());
        registry.addConverter(getLogUserToStringConverter());
        registry.addConverter(getIdToLogUserConverter());
        registry.addConverter(getStringToLogUserConverter());
        registry.addConverter(getLogUserRoleToStringConverter());
        registry.addConverter(getIdToLogUserRoleConverter());
        registry.addConverter(getStringToLogUserRoleConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}