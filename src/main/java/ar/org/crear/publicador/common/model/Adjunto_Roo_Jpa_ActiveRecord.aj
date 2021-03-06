// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.Adjunto;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Adjunto_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Adjunto.entityManager;
    
    public static final List<String> Adjunto.fieldNames4OrderClauseFilter = java.util.Arrays.asList("tipo", "tamanio", "descripcion", "nombreArchivo");
    
    public static final EntityManager Adjunto.entityManager() {
        EntityManager em = new Adjunto().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Adjunto.countAdjuntoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Adjunto o", Long.class).getSingleResult();
    }
    
    public static List<Adjunto> Adjunto.findAllAdjuntoes() {
        return entityManager().createQuery("SELECT o FROM Adjunto o", Adjunto.class).getResultList();
    }
    
    public static List<Adjunto> Adjunto.findAllAdjuntoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Adjunto o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Adjunto.class).getResultList();
    }
    
    public static Adjunto Adjunto.findAdjunto(Long id) {
        if (id == null) return null;
        return entityManager().find(Adjunto.class, id);
    }
    
    public static List<Adjunto> Adjunto.findAdjuntoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Adjunto o", Adjunto.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Adjunto> Adjunto.findAdjuntoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Adjunto o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Adjunto.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Adjunto.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Adjunto.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Adjunto attached = Adjunto.findAdjunto(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Adjunto.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Adjunto.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Adjunto Adjunto.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Adjunto merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
