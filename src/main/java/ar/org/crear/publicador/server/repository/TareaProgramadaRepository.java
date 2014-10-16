package ar.org.crear.publicador.server.repository;
import ar.org.crear.publicador.common.model.TareaProgramada;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = TareaProgramada.class)
public interface TareaProgramadaRepository {
}
