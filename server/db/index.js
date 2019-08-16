const mysql = require('mysql');

const pool = mysql.createPool({
    connectionLimit: 10,
    user: '',
    password: '',
    database: '',
    host: 'localhost',
    port: '3306'
});

let emrdb = {};

emrdb.all = () => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patients', (err, results) => {
            if(err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

emrdb.patient = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patients WHERE id = ?', [id], (err, results) => {
            if(err) {
                return reject(err);
            }
            return resolve(results[0]);
        });
    });
};

module.exports = emrdb;