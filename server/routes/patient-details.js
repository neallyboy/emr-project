const db = require('../db');

async function patientDetails(req, res) {
    try {
        let results = await db.patientDetails(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: patientDetails
}