// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.DestinatarioDataOnDemand;
import ar.org.crear.publicador.common.model.DestinatarioIntegrationTest;
import ar.org.crear.publicador.server.repository.DestinatarioRepository;
import ar.org.crear.publicador.server.service.DestinatarioService;
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

privileged aspect DestinatarioIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DestinatarioIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DestinatarioIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DestinatarioIntegrationTest: @Transactional;
    
    @Autowired
    DestinatarioDataOnDemand DestinatarioIntegrationTest.dod;
    
    @Autowired
    DestinatarioService DestinatarioIntegrationTest.destinatarioService;
    
    @Autowired
    DestinatarioRepository DestinatarioIntegrationTest.destinatarioRepository;
    
    @Test
    public void DestinatarioIntegrationTest.testCountAllDestinatarios() {
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to initialize correctly", dod.getRandomDestinatario());
        long count = destinatarioService.countAllDestinatarios();
        Assert.assertTrue("Counter for 'Destinatario' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DestinatarioIntegrationTest.testFindDestinatario() {
        Destinatario obj = dod.getRandomDestinatario();
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to provide an identifier", id);
        obj = destinatarioService.findDestinatario(id);
        Assert.assertNotNull("Find method for 'Destinatario' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Destinatario' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void DestinatarioIntegrationTest.testFindAllDestinatarios() {
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to initialize correctly", dod.getRandomDestinatario());
        long count = destinatarioService.countAllDestinatarios();
        Assert.assertTrue("Too expensive to perform a find all test for 'Destinatario', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Destinatario> result = destinatarioService.findAllDestinatarios();
        Assert.assertNotNull("Find all method for 'Destinatario' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Destinatario' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DestinatarioIntegrationTest.testFindDestinatarioEntries() {
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to initialize correctly", dod.getRandomDestinatario());
        long count = destinatarioService.countAllDestinatarios();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Destinatario> result = destinatarioService.findDestinatarioEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Destinatario' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Destinatario' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DestinatarioIntegrationTest.testFlush() {
        Destinatario obj = dod.getRandomDestinatario();
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to provide an identifier", id);
        obj = destinatarioService.findDestinatario(id);
        Assert.assertNotNull("Find method for 'Destinatario' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyDestinatario(obj);
        Integer currentVersion = obj.getVersion();
        destinatarioRepository.flush();
        Assert.assertTrue("Version for 'Destinatario' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DestinatarioIntegrationTest.testUpdateDestinatarioUpdate() {
        Destinatario obj = dod.getRandomDestinatario();
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to provide an identifier", id);
        obj = destinatarioService.findDestinatario(id);
        boolean modified =  dod.modifyDestinatario(obj);
        Integer currentVersion = obj.getVersion();
        Destinatario merged = destinatarioService.updateDestinatario(obj);
        destinatarioRepository.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Destinatario' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DestinatarioIntegrationTest.testSaveDestinatario() {
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to initialize correctly", dod.getRandomDestinatario());
        Destinatario obj = dod.getNewTransientDestinatario(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Destinatario' identifier to be null", obj.getId());
        try {
            destinatarioService.saveDestinatario(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        destinatarioRepository.flush();
        Assert.assertNotNull("Expected 'Destinatario' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void DestinatarioIntegrationTest.testDeleteDestinatario() {
        Destinatario obj = dod.getRandomDestinatario();
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Destinatario' failed to provide an identifier", id);
        obj = destinatarioService.findDestinatario(id);
        destinatarioService.deleteDestinatario(obj);
        destinatarioRepository.flush();
        Assert.assertNull("Failed to remove 'Destinatario' with identifier '" + id + "'", destinatarioService.findDestinatario(id));
    }
    
}
