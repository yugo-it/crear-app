package ar.org.crear.publicador.common.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierColumn = "id", identifierField = "id", table = "CREAR_PUBL_OBJETIVO")
@RooJson(deepSerialize = true)
public class Objetivo {

    /**
     */
    private Integer minimo;

    /**
     */
    private Integer maximo;

    /**
     */
    @ManyToOne
    private Periodicidad periodicidad;

    /**
     */
    @ManyToOne
    private MedioAlerta medioAlerta;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Medio> medios = new ArrayList<Medio>();
}
