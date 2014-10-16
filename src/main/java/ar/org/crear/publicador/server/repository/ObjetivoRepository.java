package ar.org.crear.publicador.server.repository;
import ar.org.crear.publicador.common.model.Objetivo;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Objetivo.class)
public interface ObjetivoRepository {
}
