package ar.org.crear.publicador.server.repository;
import ar.org.crear.publicador.common.model.Notificacion;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Notificacion.class)
public interface NotificacionRepository {
}
