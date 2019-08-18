import React from 'react';
import Main from './Main';
import SideNav from './SideNav'
import { Row, Col } from 'reactstrap';
import {
    Collapse,
    Navbar,
    NavbarToggler,
    NavbarBrand,
    Nav,
    UncontrolledDropdown,
    DropdownToggle,
    DropdownMenu,
    DropdownItem,
    FormGroup,
    Input,
    Label,
    Button } from 'reactstrap';
import { NavLink, Link } from "react-router-dom";

export default class State extends React.Component {
    constructor(props) {
        super(props);
    
        this.toggle = this.toggle.bind(this);
        this.state = {
          isOpen: false,
          inputValue: '',
        };
        this.sendSearch = this.sendSearch.bind(this);
      }
      toggle() {
        this.setState({
          isOpen: !this.state.isOpen
        });
      }
      async sendSearch(){
  
        await this.setState({
          patientHealthCard: this.state.inputValue
        })
        console.log(this.state.patientHealthCard)
        
        
        let response = await fetch(`http://localhost:4000/api/patient/${this.state.patientHealthCard}`, 
        {
          crossDomain: true,
          headers: {'Content-Type':'application/json'},
        })
        let responseJSON = await response.json();
        let dob = responseJSON.date_of_birth
        let dobsliced = dob.slice(0,10)
        console.log(dobsliced);
        responseJSON.date_of_birth = dobsliced;
        await this.setState({ apiResponse: [responseJSON], healthCardNumber: responseJSON.health_card_number, patientId: responseJSON.patient_id });
        console.log(responseJSON.date_of_birth);
    }
    updateInputValue(evt) {
      this.setState({
        inputValue: evt.target.value
      })}
    
  render(){
      return (
    <div>
        <div>
          <Navbar color="light" light expand="md">
            <NavbarBrand href="/">Patient Records</NavbarBrand>
            <NavbarToggler onClick={this.toggle} />
            <div>
              <FormGroup>
                <Label for="search">Search: </Label>
                <Input name="search" id="search" value={this.state.inputValue} onChange={evt => this.updateInputValue(evt)}></Input>
                <Link to='/patientdetail'><Button onClick={this.sendSearch}>Search</Button></Link>
              </FormGroup>
            </div>
            <Collapse isOpen={this.state.isOpen} navbar>
              <Nav className="ml-auto" navbar>
                <UncontrolledDropdown nav inNavbar>
                  <DropdownToggle nav caret>
                      Login Options
                  </DropdownToggle>
                  <DropdownMenu right>
                    <DropdownItem>
                      <NavLink to='/login'>
                        Login
                      </NavLink>
                    </DropdownItem>
                    <DropdownItem>
                      Logout
                    </DropdownItem>
                  </DropdownMenu>
                </UncontrolledDropdown>
              </Nav>
            </Collapse>
          </Navbar>
        </div>
        <Row fluid>
            <Col xs="2">
                <SideNav fluid />
            </Col>
            <Col xs="10">
                <Main fluid searchresponse={this.state.apiResponse}></Main>
            </Col>
        </Row>
    </div>
  )};
}