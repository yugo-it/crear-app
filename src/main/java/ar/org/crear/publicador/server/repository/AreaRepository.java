package ar.org.crear.publicador.server.repository;
import ar.org.crear.publicador.common.model.Area;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Area.class)
public interface AreaRepository {
}
