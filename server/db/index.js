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

//Login
emrdb.login = (loginDetails) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM users WHERE username = ?', [loginDetails.user], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

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


//Delete all patient allergies as part of delete patient
emrdb.deleteAllPatientAllergies = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('DELETE FROM patient_allergies WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Delete all patient immunizations as part of delete patient
emrdb.deleteAllPatientImmunizations = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('DELETE FROM patient_immunization WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Delete all patient radiology images as part of delete patient
emrdb.deleteAllPatientRadiologyImages = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('DELETE FROM patient_radiology_image WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Delete all patient lab tests as part of delete patient
emrdb.deleteAllPatientLabTests = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('DELETE FROM patient_lab_test WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Delete all patient care providers as part of delete patient
emrdb.deleteAllPatientCareProviders = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('DELETE FROM patient_care_provider WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Delete a patient
emrdb.deletePatient = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('DELETE FROM patients WHERE patient_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Create new patient
emrdb.createPatient = (newPatient) => {
    console.log(newPatient);
    const sqlString = 'INSERT INTO patients SET health_card_number=?, first_name=?, last_name=?, date_of_birth=?, gender=?, street_number=?, street_name=?, state=?, zip_code=?, phone=?, email=?, insert_date=current_date, last_update_date=current_date';
    return new Promise((resolve, reject) => {
        pool.query(sqlString, [
            newPatient.health_card_number,
            newPatient.first_name,
            newPatient.last_name,
            newPatient.date_of_birth,
            newPatient.gender,
            newPatient.street_number,
            newPatient.street_name,
            newPatient.state,
            newPatient.zip_code,
            newPatient.phone,
            newPatient.email
        ], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        })
    })
}

//Update existing patient
emrdb.updatePatient = (updatedPatient, id) => {
    console.log(updatedPatient);
    const sqlString = 'UPDATE patients SET health_card_number=?, first_name=?, last_name=?, date_of_birth=?, gender=?, street_number=?, street_name=?, state=?, zip_code=?, phone=?, email=?, last_update_date=current_date WHERE patient_id =?';
    return new Promise((resolve, reject) => {
        pool.query(sqlString, [
            updatedPatient.health_card_number,
            updatedPatient.first_name,
            updatedPatient.last_name,
            updatedPatient.date_of_birth,
            updatedPatient.gender,
            updatedPatient.street_number,
            updatedPatient.street_name,
            updatedPatient.state,
            updatedPatient.zip_code,
            updatedPatient.phone,
            updatedPatient.email,
            id
        ], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        })
    })
}
    
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
        pool.query('SELECT * FROM care_provider WHERE care_provider_id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        });
    });
};

//Create care provider
emrdb.createCareProvider = (newCareProvider) => {
    console.log(newCareProvider);
    const sqlString = 'INSERT INTO care_provider SET title=?, first_name=?, last_name=?, date_of_birth=?, gender=?, street_number=?, street_name=?, state=?, zip_code=?, phone=?, email=?, school=?';
    return new Promise((resolve, reject) => {
        pool.query(sqlString, [
            newCareProvider.title,
            newCareProvider.first_name,
            newCareProvider.last_name,
            newCareProvider.date_of_birth,
            newCareProvider.gender,
            newCareProvider.street_number,
            newCareProvider.street_name,
            newCareProvider.state,
            newCareProvider.zip_code,
            newCareProvider.phone,
            newCareProvider.email,
            newCareProvider.school
        ], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        })
    })
}

emrdb.updateCareProvider = (updatedCareProvider, id) => {
    console.log(updatedCareProvider);
    const sqlString = 'UPDATE care_provider SET title=?, first_name=?, last_name=?, date_of_birth=?, gender=?, street_number=?, street_name=?, state=?, zip_code=?, phone=?, email=?, school=? WHERE care_provider_id=?';
    return new Promise((resolve, reject) => {
        pool.query(sqlString, [
            newCareProvider.title,
            newCareProvider.first_name,
            newCareProvider.last_name,
            newCareProvider.date_of_birth,
            newCareProvider.gender,
            newCareProvider.street_number,
            newCareProvider.street_name,
            newCareProvider.state,
            newCareProvider.zip_code,
            newCareProvider.phone,
            newCareProvider.email,
            newCareProvider.school,
            id
        ], (err, results) => {
            if (err) {
                return reject(err);
            }
            return resolve(results);
        })
    })
}

//Delete Care Provider
emrdb.deleteCareProvider = (id) => {
    return new Promise((resolve, reject) => {
        pool.query('DELETE FROM care_provider WHERE care_provider_id = ?', [id], (err, results) => {
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
        pool.query('SELECT * FROM patient_care_provider WHERE patient_id = ?', [id], (err, results) => {
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




