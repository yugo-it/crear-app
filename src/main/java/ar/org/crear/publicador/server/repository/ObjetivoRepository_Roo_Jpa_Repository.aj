// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.server.repository;

import ar.org.crear.publicador.common.model.Objetivo;
import ar.org.crear.publicador.server.repository.ObjetivoRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect ObjetivoRepository_Roo_Jpa_Repository {
    
    declare parents: ObjetivoRepository extends JpaRepository<Objetivo, Long>;
    
    declare parents: ObjetivoRepository extends JpaSpecificationExecutor<Objetivo>;
    
    declare @type: ObjetivoRepository: @Repository;
    
}