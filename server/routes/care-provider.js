const db = require('../db');

async function careProvider(req, res) {
    try {
        let results = await db.careProvider(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: careProvider
  };