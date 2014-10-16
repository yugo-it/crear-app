// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.Tema;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Tema_Roo_Json {
    
    public String Tema.toJson() {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(this);
    }
    
    public String Tema.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static Tema Tema.fromJsonToTema(String json) {
        return new JSONDeserializer<Tema>()
        .use(null, Tema.class).deserialize(json);
    }
    
    public static String Tema.toJsonArray(Collection<Tema> collection) {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(collection);
    }
    
    public static String Tema.toJsonArray(Collection<Tema> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<Tema> Tema.fromJsonArrayToTemas(String json) {
        return new JSONDeserializer<List<Tema>>()
        .use("values", Tema.class).deserialize(json);
    }
    
}
