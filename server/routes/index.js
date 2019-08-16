const express = require('express');
const onePatient = require('./patient');
const deletePatient = require('./patient');
const onePatientAllergies = require('./allergies');
const careProvider = require('./care-provider');
const patientImmunization = require('./immunization');
const patientRadiologyImages = require('./radiology-images');

//Create instance of express router
const router = express.Router();

/**
 * Define routes
**/

//Patient route
router.get('/patient/:id', onePatient.get);
router.delete('/patient/:id', deletePatient.delete);

//Allergies route
router.get('/allergies/:id', onePatientAllergies.get);

//Care providers route
router.get('/care-provider/:id', careProvider.get);

//Immunization route
router.get('/immunization/:id', patientImmunization.get);

//Radiology images route
router.get('/radiology-images/:id', patientRadiologyImages.get);

module.exports = router;