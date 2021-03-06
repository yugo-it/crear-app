// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.org.crear.publicador.common.model;

import ar.org.crear.publicador.common.model.MedioAlertaDataOnDemand;
import ar.org.crear.publicador.common.model.MedioAlertaIntegrationTest;
import ar.org.crear.publicador.server.repository.MedioAlertaRepository;
import ar.org.crear.publicador.server.service.MedioAlertaService;
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

privileged aspect MedioAlertaIntegrationTest_Roo_IntegrationTest {
    
    declare @type: MedioAlertaIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: MedioAlertaIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: MedioAlertaIntegrationTest: @Transactional;
    
    @Autowired
    MedioAlertaDataOnDemand MedioAlertaIntegrationTest.dod;
    
    @Autowired
    MedioAlertaService MedioAlertaIntegrationTest.medioAlertaService;
    
    @Autowired
    MedioAlertaRepository MedioAlertaIntegrationTest.medioAlertaRepository;
    
    @Test
    public void MedioAlertaIntegrationTest.testCountAllMedioAlertas() {
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to initialize correctly", dod.getRandomMedioAlerta());
        long count = medioAlertaService.countAllMedioAlertas();
        Assert.assertTrue("Counter for 'MedioAlerta' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void MedioAlertaIntegrationTest.testFindMedioAlerta() {
        MedioAlerta obj = dod.getRandomMedioAlerta();
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to provide an identifier", id);
        obj = medioAlertaService.findMedioAlerta(id);
        Assert.assertNotNull("Find method for 'MedioAlerta' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'MedioAlerta' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void MedioAlertaIntegrationTest.testFindAllMedioAlertas() {
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to initialize correctly", dod.getRandomMedioAlerta());
        long count = medioAlertaService.countAllMedioAlertas();
        Assert.assertTrue("Too expensive to perform a find all test for 'MedioAlerta', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<MedioAlerta> result = medioAlertaService.findAllMedioAlertas();
        Assert.assertNotNull("Find all method for 'MedioAlerta' illegally returned null", result);
        Assert.assertTrue("Find all method for 'MedioAlerta' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void MedioAlertaIntegrationTest.testFindMedioAlertaEntries() {
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to initialize correctly", dod.getRandomMedioAlerta());
        long count = medioAlertaService.countAllMedioAlertas();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<MedioAlerta> result = medioAlertaService.findMedioAlertaEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'MedioAlerta' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'MedioAlerta' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void MedioAlertaIntegrationTest.testFlush() {
        MedioAlerta obj = dod.getRandomMedioAlerta();
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to provide an identifier", id);
        obj = medioAlertaService.findMedioAlerta(id);
        Assert.assertNotNull("Find method for 'MedioAlerta' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyMedioAlerta(obj);
        Integer currentVersion = obj.getVersion();
        medioAlertaRepository.flush();
        Assert.assertTrue("Version for 'MedioAlerta' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void MedioAlertaIntegrationTest.testUpdateMedioAlertaUpdate() {
        MedioAlerta obj = dod.getRandomMedioAlerta();
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to provide an identifier", id);
        obj = medioAlertaService.findMedioAlerta(id);
        boolean modified =  dod.modifyMedioAlerta(obj);
        Integer currentVersion = obj.getVersion();
        MedioAlerta merged = medioAlertaService.updateMedioAlerta(obj);
        medioAlertaRepository.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'MedioAlerta' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void MedioAlertaIntegrationTest.testSaveMedioAlerta() {
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to initialize correctly", dod.getRandomMedioAlerta());
        MedioAlerta obj = dod.getNewTransientMedioAlerta(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'MedioAlerta' identifier to be null", obj.getId());
        try {
            medioAlertaService.saveMedioAlerta(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        medioAlertaRepository.flush();
        Assert.assertNotNull("Expected 'MedioAlerta' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void MedioAlertaIntegrationTest.testDeleteMedioAlerta() {
        MedioAlerta obj = dod.getRandomMedioAlerta();
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MedioAlerta' failed to provide an identifier", id);
        obj = medioAlertaService.findMedioAlerta(id);
        medioAlertaService.deleteMedioAlerta(obj);
        medioAlertaRepository.flush();
        Assert.assertNull("Failed to remove 'MedioAlerta' with identifier '" + id + "'", medioAlertaService.findMedioAlerta(id));
    }
    
}
