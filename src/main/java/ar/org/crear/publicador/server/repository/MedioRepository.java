package ar.org.crear.publicador.server.repository;
import ar.org.crear.publicador.common.model.Medio;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Medio.class)
public interface MedioRepository {
}
