const db = require('../db');

async function pateientRadiologyImages (req, res)  {
    try {
        let results = await db.patientRadiologyImages(req.params.id);
        res.json(results);
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    get: pateientRadiologyImages
}