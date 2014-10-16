package ar.org.crear.publicador.common.model.security;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson(deepSerialize = true)
public class LogUser {

    /**
     */
    private String username;

    /**
     */
    private String password;

    /**
     */
    @NotNull
    private Boolean enabled;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<LogUserRole> roles = new HashSet<LogUserRole>();
}
