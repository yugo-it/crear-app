package ar.org.crear.publicador.server.repository;
import ar.org.crear.publicador.common.model.Tema;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Tema.class)
public interface TemaRepository {
}
