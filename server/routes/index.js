const express = require('express');
const allPatients = require('./all-patients');
const onePatient = require('./patient');
const deletePatient = require('./patient');
const onePatientAllergies = require('./allergies');
const allAllergies = require('./allergies');
const careProvider = require('./care-provider');
const patientImmunization = require('./patient-immunization');
const allImmunizations = require('./all-immunizations');
const allLabTests = require('./all-lab-tests');
const patientRadiologyImages = require('./radiology-images');

//Create instance of express router
const router = express.Router();

/**
 * Define routes
**/

//All patients route
router.get('/patients', allPatients.get);

//Patient by health card route
router.get('/patient/:id', onePatient.get);
router.delete('/patient/:id', deletePatient.delete);

//All allergies route
router.get('/allergies', allAllergies.get);

//Patient allergies route
router.get('/patient-allergies/:id', onePatientAllergies.get);

//Care providers route
router.get('/care-provider/:id', careProvider.get);

//Patient immunization route
router.get('/patient-immunization/:id', patientImmunization.get);

//All immunizations route
router.get('/all-immunizations', allImmunizations.get);

//All lab tests route
router.get('/all-lab-tests', allLabTests.get);

//Radiology images route
router.get('/radiology-images/:id', patientRadiologyImages.get);

module.exports = router;