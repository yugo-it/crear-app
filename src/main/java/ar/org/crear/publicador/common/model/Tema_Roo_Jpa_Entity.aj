// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.Tema;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Tema_Roo_Jpa_Entity {
    
    declare @type: Tema: @Entity;
    
    declare @type: Tema: @Table(name = "CREAR_PUBL_TEMA");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Tema.id;
    
    @Version
    @Column(name = "version")
    private Integer Tema.version;
    
    public Long Tema.getId() {
        return this.id;
    }
    
    public void Tema.setId(Long id) {
        this.id = id;
    }
    
    public Integer Tema.getVersion() {
        return this.version;
    }
    
    public void Tema.setVersion(Integer version) {
        this.version = version;
    }
    
}