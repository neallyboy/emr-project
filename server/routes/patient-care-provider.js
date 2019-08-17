const db = require('../db');

async function patientCareProvider(req, res) {
    try {
        let results = await db.patientCareProvider(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: patientCareProvider
}