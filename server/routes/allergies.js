const db = require('../db');

async function onePatientAllergies (req, res) {
    try {
        let results = await db.onePatientAllergies(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: onePatientAllergies
  };