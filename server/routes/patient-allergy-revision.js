const db = require('../db');

async function patientAllergyRevision(req, res) {
    try {
        let results = await db.patientAllergyRevision(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: patientAllergyRevision
}