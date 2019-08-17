const db = require('../db');

async function onePatient (req, res) {
    try {
        let results = await db.onePatient(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

async function deletePatient (req, res) {
    try {
        db.deleteAllPatientAllergies(req.params.id);
        db.deleteAllPatientImmunizations(req.params.id);
        db.deleteAllPatientRadiologyImages(req.params.id);
        db.deleteAllPatientLabTests(req.params.id);
        db.deleteAllPatientCareProviders(req.params.id);
        let results = db.deletePatient(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

async function createPatient (req, res) {
    const newPatient = req.body;
    console.log(newPatient);
    /*
    try {db.createPatient(newPatient);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }*/
}

module.exports = {
    get: onePatient,
    delete: deletePatient,
    post: createPatient
  };