// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.AdjuntoDataOnDemand;
import ar.org.crear.publicador.common.model.AdjuntoIntegrationTest;
import ar.org.crear.publicador.server.repository.AdjuntoRepository;
import ar.org.crear.publicador.server.service.AdjuntoService;
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

privileged aspect AdjuntoIntegrationTest_Roo_IntegrationTest {
    
    declare @type: AdjuntoIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: AdjuntoIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: AdjuntoIntegrationTest: @Transactional;
    
    @Autowired
    AdjuntoDataOnDemand AdjuntoIntegrationTest.dod;
    
    @Autowired
    AdjuntoService AdjuntoIntegrationTest.adjuntoService;
    
    @Autowired
    AdjuntoRepository AdjuntoIntegrationTest.adjuntoRepository;
    
    @Test
    public void AdjuntoIntegrationTest.testCountAllAdjuntoes() {
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to initialize correctly", dod.getRandomAdjunto());
        long count = adjuntoService.countAllAdjuntoes();
        Assert.assertTrue("Counter for 'Adjunto' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void AdjuntoIntegrationTest.testFindAdjunto() {
        Adjunto obj = dod.getRandomAdjunto();
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to provide an identifier", id);
        obj = adjuntoService.findAdjunto(id);
        Assert.assertNotNull("Find method for 'Adjunto' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Adjunto' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void AdjuntoIntegrationTest.testFindAllAdjuntoes() {
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to initialize correctly", dod.getRandomAdjunto());
        long count = adjuntoService.countAllAdjuntoes();
        Assert.assertTrue("Too expensive to perform a find all test for 'Adjunto', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Adjunto> result = adjuntoService.findAllAdjuntoes();
        Assert.assertNotNull("Find all method for 'Adjunto' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Adjunto' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void AdjuntoIntegrationTest.testFindAdjuntoEntries() {
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to initialize correctly", dod.getRandomAdjunto());
        long count = adjuntoService.countAllAdjuntoes();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Adjunto> result = adjuntoService.findAdjuntoEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Adjunto' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Adjunto' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void AdjuntoIntegrationTest.testFlush() {
        Adjunto obj = dod.getRandomAdjunto();
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to provide an identifier", id);
        obj = adjuntoService.findAdjunto(id);
        Assert.assertNotNull("Find method for 'Adjunto' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyAdjunto(obj);
        Integer currentVersion = obj.getVersion();
        adjuntoRepository.flush();
        Assert.assertTrue("Version for 'Adjunto' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AdjuntoIntegrationTest.testUpdateAdjuntoUpdate() {
        Adjunto obj = dod.getRandomAdjunto();
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to provide an identifier", id);
        obj = adjuntoService.findAdjunto(id);
        boolean modified =  dod.modifyAdjunto(obj);
        Integer currentVersion = obj.getVersion();
        Adjunto merged = adjuntoService.updateAdjunto(obj);
        adjuntoRepository.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Adjunto' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AdjuntoIntegrationTest.testSaveAdjunto() {
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to initialize correctly", dod.getRandomAdjunto());
        Adjunto obj = dod.getNewTransientAdjunto(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Adjunto' identifier to be null", obj.getId());
        try {
            adjuntoService.saveAdjunto(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        adjuntoRepository.flush();
        Assert.assertNotNull("Expected 'Adjunto' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void AdjuntoIntegrationTest.testDeleteAdjunto() {
        Adjunto obj = dod.getRandomAdjunto();
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Adjunto' failed to provide an identifier", id);
        obj = adjuntoService.findAdjunto(id);
        adjuntoService.deleteAdjunto(obj);
        adjuntoRepository.flush();
        Assert.assertNull("Failed to remove 'Adjunto' with identifier '" + id + "'", adjuntoService.findAdjunto(id));
    }
    
}
