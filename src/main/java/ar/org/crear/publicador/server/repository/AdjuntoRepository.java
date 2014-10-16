package ar.org.crear.publicador.server.repository;
import ar.org.crear.publicador.common.model.Adjunto;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Adjunto.class)
public interface AdjuntoRepository {
}
