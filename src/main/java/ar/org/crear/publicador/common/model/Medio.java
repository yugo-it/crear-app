package ar.org.crear.publicador.common.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierColumn = "id", identifierField = "id", table = "CREAR_PUBL_MEDIO")
@RooJson(deepSerialize = true)
public class Medio {

    /**
     */
    private String descripcion;

    /**
     */
    @Size(max = 20)
    private String tipo;

    /**
     */
    @Size(max = 500)
    private String url;
}
