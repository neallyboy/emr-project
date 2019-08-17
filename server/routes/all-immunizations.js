const db = require('../db');

async function allImmunizations (req, res) {
    try {
        let results = await db.allImmunizations();
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: allImmunizations
}