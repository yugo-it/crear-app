package ar.org.crear.publicador.server.repository;
import ar.org.crear.publicador.common.model.Periodicidad;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Periodicidad.class)
public interface PeriodicidadRepository {
}
