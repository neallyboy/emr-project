const db = require('../db');

async function allLabTests (req, res) {
    try {
        let results = await db.allLabTests();
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: allLabTests
}