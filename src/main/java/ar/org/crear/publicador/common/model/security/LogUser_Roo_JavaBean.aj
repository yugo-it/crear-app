// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model.security;

import ar.org.crear.publicador.common.model.security.LogUser;
import ar.org.crear.publicador.common.model.security.LogUserRole;
import java.util.Set;

privileged aspect LogUser_Roo_JavaBean {
    
    public String LogUser.getUsername() {
        return this.username;
    }
    
    public void LogUser.setUsername(String username) {
        this.username = username;
    }
    
    public String LogUser.getPassword() {
        return this.password;
    }
    
    public void LogUser.setPassword(String password) {
        this.password = password;
    }
    
    public Boolean LogUser.getEnabled() {
        return this.enabled;
    }
    
    public void LogUser.setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
    
    public Set<LogUserRole> LogUser.getRoles() {
        return this.roles;
    }
    
    public void LogUser.setRoles(Set<LogUserRole> roles) {
        this.roles = roles;
    }
    
}
