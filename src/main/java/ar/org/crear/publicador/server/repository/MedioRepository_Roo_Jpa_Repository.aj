// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.server.repository;

import ar.org.crear.publicador.common.model.Medio;
import ar.org.crear.publicador.server.repository.MedioRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect MedioRepository_Roo_Jpa_Repository {
    
    declare parents: MedioRepository extends JpaRepository<Medio, Long>;
    
    declare parents: MedioRepository extends JpaSpecificationExecutor<Medio>;
    
    declare @type: MedioRepository: @Repository;
    
}
