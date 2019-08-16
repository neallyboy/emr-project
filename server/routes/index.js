const express = require('express');
const db = require('../db');
const router = express.Router();

router.get('/patient', async (req, res, next) => {
    try {
        let results = await db.allPatients();
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
});

router.get('/patient/:id', async (req, res, next) => {
    try {
        let results = await db.onePatient(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
});

router.delete('/patient/:id', async (req, res, next) => {
    try {
        db.deletePatient(req.params.id);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
});

router.get('/patient/allergies', async (req, res, next) => {
    try {
        let results = await db.allPatientAllergies();
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
});

router.get('/patient/allergies/:id', async (req, res, next) => {
    try {
        let results = await db.onePatientAllergies(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
});

router.get('/patient/care-provider/:id', async (req, res, next) => {
    try {
        let results = await db.careProvider(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
});

router.get('/patient/immunization/:id', async (req, res, next) => {
    try {
        let results = await db.immunization(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
});

router.get('/patient/radiology-image/:id', async (req, res, next) => {
    try {
        let results = await db.radiologyImage(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
});

module.exports = router;