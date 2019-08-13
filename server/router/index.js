'use strict';

let express = require('express');
let homeRoutes = require('./home');
let loginRoutes = require('./login');
let logoutRoutes = require('./logout');
let registerRoutes = require('./register');


// Create instance of an express router
let router = express.Router();


/**
 * Define routes
 */

// Home page
router.get('/', homeRoutes.get);

// Login page
router.get('/login', loginRoutes.get);
router.post('/login', loginRoutes.post);

// Logout
router.get('/logout', logoutRoutes.get);

// Register page
router.get('/register', registerRoutes.get);
router.post('/register', registerRoutes.post);


module.exports = router;
