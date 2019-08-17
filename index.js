import React from 'react';
import ReactDOM from 'react-dom';
import './src/index.css';
import App from './src/App';
import * as serviceWorker from './src/serviceWorker';
import 'bootstrap/dist/css/bootstrap.min.css';

const root = document.querySelector('#app')
ReactDOM.render(<App />, root);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
