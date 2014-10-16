// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.Publicacion;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Publicacion_Roo_Json {
    
    public String Publicacion.toJson() {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(this);
    }
    
    public String Publicacion.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static Publicacion Publicacion.fromJsonToPublicacion(String json) {
        return new JSONDeserializer<Publicacion>()
        .use(null, Publicacion.class).deserialize(json);
    }
    
    public static String Publicacion.toJsonArray(Collection<Publicacion> collection) {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(collection);
    }
    
    public static String Publicacion.toJsonArray(Collection<Publicacion> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<Publicacion> Publicacion.fromJsonArrayToPublicacions(String json) {
        return new JSONDeserializer<List<Publicacion>>()
        .use("values", Publicacion.class).deserialize(json);
    }
    
}
