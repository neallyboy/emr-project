import React from 'react';
import './App.css';

import State from './State';
import { Container } from 'reactstrap';

function App() {
  return (
    <div className="App">
        <Container fluid>
        <State>
        </State>
        </Container>
    </div>
  );
}

export default App;
