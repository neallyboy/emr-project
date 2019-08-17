const db = require('../db');

async function allPatients (req, res) {
    try {
        let results = await db.allPatients();
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: allPatients
}