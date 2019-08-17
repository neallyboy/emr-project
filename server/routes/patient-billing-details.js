const db = require('../db');

async function patientBillingDetails(req, res) {
    try {
        let results = await db.patientBillingDetails(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: patientBillingDetails
}