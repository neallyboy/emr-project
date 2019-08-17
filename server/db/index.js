const mysql = require('mysql');

const pool = mysql.createPool({
    connectionLimit: 10,
    user: 'root',
    password: 'twEe7TJd',
    database: 'emr',
    host: 'localhost',
    port: '3306',
    multipleStatements: true
});

pool.getConnection(function(err) {
    if (err) {
      return console.error('error: ' + err.message);
    }
    console.log('Connected to the MySQL server.');
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
    pool.query('DELETE FROM patients WHERE health_card_number = ?', [id], (res,err) => {
        if (err) {
            console.log(err);
        }
        res.send("Successfully delete patient");
    })
};

//Patients allergies
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

//All alergies
emrdb.allAllergies = () => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM allergies', (err, results) =>{
            if (err) {
                return reject(err);
            }
            return resolve(results);
        })
    })
}

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
emrdb.patientImmunization = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patient_immunization WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

emrdb.allImmunizations = () => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM immunization', (err, results) =>{
            if (err) {
                return reject(err);
            }
            return resolve(results);
        })
    })
}


//Patient Labtest
emrdb.patientLabTest = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patient_lab_test WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

emrdb.allLabTests = () => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM lab_test', (err, results) =>{
            if (err) {
                return reject(err);
            }
            return resolve(results);
        })
    })
}

//Patient Radiology Image
emrdb.patientRadiologyImages = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM patient_radiology_image WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Patient allergy cost
emrdb.patientAllergyCost = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM v_patient_allergy_cost WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Patient allergy revision
emrdb.patientAllergyRevision = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM v_patient_allergy_revisions WHERE health_card_number = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Patient billing details
emrdb.patientBillingDetails = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM v_patient_billing_details WHERE health_card_number = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Patient care provider
emrdb.patientCareProvider = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM v_patient_care_provider WHERE patient_name = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Patient details
emrdb.patientDetails = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM v_patient_details WHERE health_card_number = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

module.exports = emrdb;