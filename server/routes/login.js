const db = require('../db');

async function authenticateLogin (req, res) {
    loginDetails = req.body;
    try {
        let results = await db.login(loginDetails);
        const username = JSON.stringify(results[0].username);
        const password = JSON.stringify(results[0].password);     
        if (username === JSON.stringify(results[0].username) && password === JSON.stringify(results[0].password)){
            res.send("Successful login");
        }
        else    {
            console.log("Incorrect username or password, idiot.");
        }
    } catch (e) {
        console.log(e);
        res.sendstatus(500);
    }
};

module.exports = {
    post: authenticateLogin
    };