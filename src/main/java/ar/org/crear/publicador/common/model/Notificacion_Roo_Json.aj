// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.Notificacion;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Notificacion_Roo_Json {
    
    public String Notificacion.toJson() {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(this);
    }
    
    public String Notificacion.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static Notificacion Notificacion.fromJsonToNotificacion(String json) {
        return new JSONDeserializer<Notificacion>()
        .use(null, Notificacion.class).deserialize(json);
    }
    
    public static String Notificacion.toJsonArray(Collection<Notificacion> collection) {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(collection);
    }
    
    public static String Notificacion.toJsonArray(Collection<Notificacion> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<Notificacion> Notificacion.fromJsonArrayToNotificacions(String json) {
        return new JSONDeserializer<List<Notificacion>>()
        .use("values", Notificacion.class).deserialize(json);
    }
    
}
