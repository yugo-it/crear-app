package ar.org.crear.publicador.server.repository;
import ar.org.crear.publicador.common.model.MedioAlerta;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = MedioAlerta.class)
public interface MedioAlertaRepository {
}
