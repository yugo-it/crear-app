// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model.security;

import ar.org.crear.publicador.common.model.security.LogUser;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect LogUser_Roo_Jpa_Entity {
    
    declare @type: LogUser: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long LogUser.id;
    
    @Version
    @Column(name = "version")
    private Integer LogUser.version;
    
    public Long LogUser.getId() {
        return this.id;
    }
    
    public void LogUser.setId(Long id) {
        this.id = id;
    }
    
    public Integer LogUser.getVersion() {
        return this.version;
    }
    
    public void LogUser.setVersion(Integer version) {
        this.version = version;
    }
    
}
