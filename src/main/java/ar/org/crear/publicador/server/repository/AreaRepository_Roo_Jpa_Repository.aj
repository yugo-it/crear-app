// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.server.repository;

import ar.org.crear.publicador.common.model.Area;
import ar.org.crear.publicador.server.repository.AreaRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect AreaRepository_Roo_Jpa_Repository {
    
    declare parents: AreaRepository extends JpaRepository<Area, Long>;
    
    declare parents: AreaRepository extends JpaSpecificationExecutor<Area>;
    
    declare @type: AreaRepository: @Repository;
    
}
