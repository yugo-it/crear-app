// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.Adjunto;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Adjunto_Roo_Jpa_Entity {
    
    declare @type: Adjunto: @Entity;
    
    declare @type: Adjunto: @Table(name = "CREAR_PUBL_ADJUNTO");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Adjunto.id;
    
    @Version
    @Column(name = "version")
    private Integer Adjunto.version;
    
    public Long Adjunto.getId() {
        return this.id;
    }
    
    public void Adjunto.setId(Long id) {
        this.id = id;
    }
    
    public Integer Adjunto.getVersion() {
        return this.version;
    }
    
    public void Adjunto.setVersion(Integer version) {
        this.version = version;
    }
    
}