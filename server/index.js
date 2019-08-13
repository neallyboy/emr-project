//'use strict';

require('dotenv').config(); // Run this first to ensure all environment variables are set
let path = require('path');
let express = require('express');
let session = require('express-session');
let router = require('./router');
let defaultErrorHandler = require('./middleware/default-error-handler');


// Create an instance of an express application
let app = express();


/**
 * Apply middleware
 */

// Serve open static assets starting from the URL path `/static` from the `static/open` folder
app.use('/static', express.static(path.resolve('static/open')));

app.use(session({
  secret: process.env.SESSION_SECRET, // Used to cryptographically "sign" the session ID
  resave: false, // Forces the session to be saved back to the session store, just a sane default
  saveUninitialized: true, // All HTTP requests without a session have a session started for them
  cookie: {
    httpOnly: true, // Makes cookie inaccessible to client side JS
    maxAge: 12000000, // Cookie will expire after two hours
  },
}));

// Middleware to prepare default values for sessions
// This must come after the session middleware to ensure its values are set properly
//app.use(defaultSessionValues);

// Parse all incoming <form> data into an object we can access in our routes with `req.body`
app.use(express.urlencoded({ extended: true }));

// Apply router
app.use(router);

// Ensure user is logged in
//app.use(authentication);

// Serve protected static assets starting from the URL
// path `/static/protected` from the folder `static/protected`
app.use('/static/protected', express.static(path.resolve('static/protected')));

// Default error handling for serving a page for 500 errors
// This is what calls to the `next` function in our routes calls
app.use(defaultErrorHandler);


/**
 * Start server
 */
app.listen(process.env.HTTP_PORT, () => {
  console.log(`Express server started on port ${process.env.HTTP_PORT}.`);
});
