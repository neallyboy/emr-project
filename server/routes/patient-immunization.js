const db = require('../db');

async function patientImmunization(req, res) {
    try {
        let results = await db.patientImmunization(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: patientImmunization
}