const express = require('express');
const login = require('./login');
const allPatients = require('./all-patients');
const onePatient = require('./patient');
const deletePatient = require('./patient');
const createPatient = require('./patient');
const updatePatient = require('./patient');
const onePatientAllergies = require('./allergies');
const allAllergies = require('./allergies');
const patientCareProvider = require('./patient-care-provider');
const careProvider = require('./care-provider');
const createCareProvider = require ('./care-provider');
const updateCareProvider = require('./care-provider');
const deleteCareProvider = require('./care-provider');
const patientImmunization = require('./patient-immunization');
const allImmunizations = require('./all-immunizations');
const allLabTests = require('./all-lab-tests');
const patientRadiologyImages = require('./radiology-images');
const patientAllergyCost = require('./patient-allergy-cost');
const patientAllergyRevision = require('./patient-allergy-revision');
const patientBillingDetails = require('./patient-billing-details');
const patientDetails = require('./patient-details');

//Create instance of express router
const router = express.Router();

/**
 * Define routes
**/

//Login route
router.post('/login', login.post);

//All patients route
router.get('/patients', allPatients.get);

//Search patient by health card, delete patient by patient id
router.get('/patient/:id', onePatient.get);
router.delete('/patient/:id', deletePatient.delete);
router.post('/patient', createPatient.post);
router.put('/patient/:id', updatePatient.put);

//All allergies route
router.get('/allergies', allAllergies.get);

//Patient allergies route
router.get('/patient-allergies/:id', onePatientAllergies.get);

//Patient care providers route
router.get('/patient-care-provider/:id', patientCareProvider.get);

//Care providers route
router.get('/care-provider/:id', careProvider.get);
router.post('/care-provider', createCareProvider.post);
router.put('/care-provider/:id', updateCareProvider.put);
router.delete('/care-provider/:id', deleteCareProvider.delete);

//Patient immunization route
router.get('/patient-immunization/:id', patientImmunization.get);

//All immunizations route
router.get('/all-immunizations', allImmunizations.get);

//All lab tests route
router.get('/all-lab-tests', allLabTests.get);

//Radiology images route
router.get('/radiology-images/:id', patientRadiologyImages.get);

//Patient allergy cost
router.get('/patient-allergy-cost/:id', patientAllergyCost.get);

//Patient allergy revision
router.get('/patient-allergy-revision/:id', patientAllergyRevision.get);

//Patient billing details
router.get('/patient-billing-details/:id', patientBillingDetails.get);

//Patient care provider
router.get('/patient-care-provider/:id', patientCareProvider.get);

//Patient details
router.get('/patient-details/:id', patientDetails.get);

module.exports = router;