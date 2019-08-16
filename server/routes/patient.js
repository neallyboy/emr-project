const db = require('../db');

async function allPatients (res) {
    try {
        let results = await db.allPatients();
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

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
        db.deletePatient(req.params.id);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: allPatients,
    get: onePatient,
    delete: deletePatient
  };