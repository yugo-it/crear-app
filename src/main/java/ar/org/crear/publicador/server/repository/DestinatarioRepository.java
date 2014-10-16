package ar.org.crear.publicador.server.repository;
import ar.org.crear.publicador.common.model.Destinatario;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Destinatario.class)
public interface DestinatarioRepository {
}
