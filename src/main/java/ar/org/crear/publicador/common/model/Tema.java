package ar.org.crear.publicador.common.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierColumn = "id", identifierField = "id", table = "CREAR_PUBL_TEMA")
@RooJson(deepSerialize = true)
public class Tema {
}
