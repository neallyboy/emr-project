const db = require('../db');

async function careProvider(req, res) {
    try {
        let results = await db.careProvider(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

async function createCareProvider (req, res) {
    newCareProvider = req.body;
    try {
        let results = await db.createCareProvider(newCareProvider);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

async function updateCareProvider (req, res) {
    updatedCareProvider = req.body;
    try {
        let results = await db.updateCareProvider(updatedCareProvider, req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

async function deleteCareProvider (req, res) {
    try {
        let results = db.deleteCareProvider(req.params.id);
        res.json(results);
        console.log("Successfully deleted care provider");
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: careProvider,
    post: createCareProvider,
    put: updateCareProvider,
    delete: deleteCareProvider
  };