// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.domain;

import com.springsource.petclinic.domain.VisitDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VisitIntegrationTest_Roo_IntegrationTest {
    
    declare @type: VisitIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: VisitIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: VisitIntegrationTest: @Transactional;
    
    @Autowired
    private VisitDataOnDemand VisitIntegrationTest.dod;
    
    @Test
    public void VisitIntegrationTest.testCountVisits() {
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to initialize correctly", dod.getRandomVisit());
        long count = com.springsource.petclinic.domain.Visit.countVisits();
        org.junit.Assert.assertTrue("Counter for 'Visit' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void VisitIntegrationTest.testFindVisit() {
        com.springsource.petclinic.domain.Visit obj = dod.getRandomVisit();
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to provide an identifier", id);
        obj = com.springsource.petclinic.domain.Visit.findVisit(id);
        org.junit.Assert.assertNotNull("Find method for 'Visit' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Visit' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void VisitIntegrationTest.testFindAllVisits() {
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to initialize correctly", dod.getRandomVisit());
        long count = com.springsource.petclinic.domain.Visit.countVisits();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Visit', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<com.springsource.petclinic.domain.Visit> result = com.springsource.petclinic.domain.Visit.findAllVisits();
        org.junit.Assert.assertNotNull("Find all method for 'Visit' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Visit' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void VisitIntegrationTest.testFindVisitEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to initialize correctly", dod.getRandomVisit());
        long count = com.springsource.petclinic.domain.Visit.countVisits();
        if (count > 20) count = 20;
        java.util.List<com.springsource.petclinic.domain.Visit> result = com.springsource.petclinic.domain.Visit.findVisitEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Visit' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Visit' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void VisitIntegrationTest.testFlush() {
        com.springsource.petclinic.domain.Visit obj = dod.getRandomVisit();
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to provide an identifier", id);
        obj = com.springsource.petclinic.domain.Visit.findVisit(id);
        org.junit.Assert.assertNotNull("Find method for 'Visit' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyVisit(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Visit' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void VisitIntegrationTest.testMerge() {
        com.springsource.petclinic.domain.Visit obj = dod.getRandomVisit();
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to provide an identifier", id);
        obj = com.springsource.petclinic.domain.Visit.findVisit(id);
        boolean modified =  dod.modifyVisit(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        com.springsource.petclinic.domain.Visit merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Visit' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void VisitIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to initialize correctly", dod.getRandomVisit());
        com.springsource.petclinic.domain.Visit obj = dod.getNewTransientVisit(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Visit' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Visit' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void VisitIntegrationTest.testRemove() {
        com.springsource.petclinic.domain.Visit obj = dod.getRandomVisit();
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Visit' failed to provide an identifier", id);
        obj = com.springsource.petclinic.domain.Visit.findVisit(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Visit' with identifier '" + id + "'", com.springsource.petclinic.domain.Visit.findVisit(id));
    }
    
}
