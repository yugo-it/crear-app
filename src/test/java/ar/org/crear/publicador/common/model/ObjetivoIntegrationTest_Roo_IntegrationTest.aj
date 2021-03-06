// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.ObjetivoDataOnDemand;
import ar.org.crear.publicador.common.model.ObjetivoIntegrationTest;
import ar.org.crear.publicador.server.repository.ObjetivoRepository;
import ar.org.crear.publicador.server.service.ObjetivoService;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ObjetivoIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ObjetivoIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ObjetivoIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: ObjetivoIntegrationTest: @Transactional;
    
    @Autowired
    ObjetivoDataOnDemand ObjetivoIntegrationTest.dod;
    
    @Autowired
    ObjetivoService ObjetivoIntegrationTest.objetivoService;
    
    @Autowired
    ObjetivoRepository ObjetivoIntegrationTest.objetivoRepository;
    
    @Test
    public void ObjetivoIntegrationTest.testCountAllObjetivoes() {
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to initialize correctly", dod.getRandomObjetivo());
        long count = objetivoService.countAllObjetivoes();
        Assert.assertTrue("Counter for 'Objetivo' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ObjetivoIntegrationTest.testFindObjetivo() {
        Objetivo obj = dod.getRandomObjetivo();
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to provide an identifier", id);
        obj = objetivoService.findObjetivo(id);
        Assert.assertNotNull("Find method for 'Objetivo' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Objetivo' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ObjetivoIntegrationTest.testFindAllObjetivoes() {
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to initialize correctly", dod.getRandomObjetivo());
        long count = objetivoService.countAllObjetivoes();
        Assert.assertTrue("Too expensive to perform a find all test for 'Objetivo', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Objetivo> result = objetivoService.findAllObjetivoes();
        Assert.assertNotNull("Find all method for 'Objetivo' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Objetivo' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ObjetivoIntegrationTest.testFindObjetivoEntries() {
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to initialize correctly", dod.getRandomObjetivo());
        long count = objetivoService.countAllObjetivoes();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Objetivo> result = objetivoService.findObjetivoEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Objetivo' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Objetivo' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ObjetivoIntegrationTest.testFlush() {
        Objetivo obj = dod.getRandomObjetivo();
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to provide an identifier", id);
        obj = objetivoService.findObjetivo(id);
        Assert.assertNotNull("Find method for 'Objetivo' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyObjetivo(obj);
        Integer currentVersion = obj.getVersion();
        objetivoRepository.flush();
        Assert.assertTrue("Version for 'Objetivo' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ObjetivoIntegrationTest.testUpdateObjetivoUpdate() {
        Objetivo obj = dod.getRandomObjetivo();
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to provide an identifier", id);
        obj = objetivoService.findObjetivo(id);
        boolean modified =  dod.modifyObjetivo(obj);
        Integer currentVersion = obj.getVersion();
        Objetivo merged = objetivoService.updateObjetivo(obj);
        objetivoRepository.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Objetivo' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ObjetivoIntegrationTest.testSaveObjetivo() {
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to initialize correctly", dod.getRandomObjetivo());
        Objetivo obj = dod.getNewTransientObjetivo(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Objetivo' identifier to be null", obj.getId());
        try {
            objetivoService.saveObjetivo(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        objetivoRepository.flush();
        Assert.assertNotNull("Expected 'Objetivo' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ObjetivoIntegrationTest.testDeleteObjetivo() {
        Objetivo obj = dod.getRandomObjetivo();
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Objetivo' failed to provide an identifier", id);
        obj = objetivoService.findObjetivo(id);
        objetivoService.deleteObjetivo(obj);
        objetivoRepository.flush();
        Assert.assertNull("Failed to remove 'Objetivo' with identifier '" + id + "'", objetivoService.findObjetivo(id));
    }
    
}
