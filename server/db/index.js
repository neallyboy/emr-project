const mysql = require('mysql');

const pool = mysql.createPool({
    connectionLimit: 10,
    user: 'root',
    password: 'Carter15',
    database: 'emr_db',
    host: 'localhost',
    port: '3306',
    multipleStatements: true
});

let emrdb = {};

//Get all patients
emrdb.allPatients = () => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patients', (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Get patient by id 
emrdb.onePatient = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patients WHERE health_card_number = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results[0]);
        });
    });
};

//Delete a patient
emrdb.deletePatient = (id) => {
    pool.query('DELETE FROM patients WHERE health_card_number = ?', [id], (err, results) => {
        if (err) {
            console.log(err);
        }
        res.send("Successfully delete patient");
    })
};

//All patient allergies
emrdb.allPatientAllergies = () => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patient_allergies', (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//One patients allergies
emrdb.onePatientAllergies = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patient_allergies WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Patient care provider
emrdb.careProvider = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patient_care_provider WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Patient immunization
emrdb.immunization = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patient_immunization WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

emrdb.labTest = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patient_lab_test WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

emrdb.radiologyImage = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patient_radiology_image WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

module.exports = emrdb;