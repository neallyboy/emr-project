import React from 'react';
import './App.css';
import Nav from './Navbar';
import Main from './Main';
import SideNav from './SideNav'
import { Container, Row, Col } from 'reactstrap';

function App() {
  return (
    <div className="App">
      <Container fluid>
        <Row fluid>
          <Col>
            <Nav fluid/>
          </Col>
        </Row>
        <Row fluid>
          <Col xs="2">
              <SideNav fluid />
          </Col>
          <Col xs="10">
              <Main fluid></Main>
          </Col>
        </Row>
      </Container>
    </div>
  );
}

export default App;
