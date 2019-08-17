const express = require('express');
const apiRouter = require('./routes');
const cors = require('cors');

const app = express().use('*', cors());

app.use(express.json());
//Apply router
app.use('/api', apiRouter);

//Start server
app.listen(process.env.PORT || '4000', () => {

    console.log(`Server is running on port: ${process.env.PORT || '4000'}`);

});