const express = require('express');
var path = require('path');
const apiRouter = require('./routes');

const app = express();

app.use(express.json());

app.use('/api/patient', apiRouter);


app.listen(process.env.PORT || '4000', () => {

    console.log(`Server is running on port: ${process.env.PORT || '4000'}`);

});