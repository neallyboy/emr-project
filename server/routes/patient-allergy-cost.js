const db = require('../db');

async function patientAllergyCost(req, res) {
    try {
        let results = await db.patientAllergyCost(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: patientAllergyCost
}