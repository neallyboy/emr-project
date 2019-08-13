//'use strict';

require('dotenv').config(); // Run this first to ensure all environment variables are set
const path = require('path');
const express = require('express');
const mysql = require('mysql');
const session = require('express-session');

// Create Connection
const db = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'Carter15',
  database : 'emr_db'
});

//Connect

db.connect((err) => {
    if(err){
      throw err;
    }
    console.log('MySql Connected....');
});

// Create an instance of an express application
const app = express();


/**
 * Start server
 */
app.listen('3000', () => {
  console.log(`Express server started on port 3000`);
});
