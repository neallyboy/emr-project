import React from 'react';
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
    Form,
    FormGroup,
    Input,
    Label,
    Button } from 'reactstrap';
import { NavLink } from "react-router-dom";
  
  export default class Navigation extends React.Component {
    constructor(props) {
      super(props);
  
      this.toggle = this.toggle.bind(this);
      this.state = {
        isOpen: false,
        patientHealthCard: "",
      };
      this.state.sendSearch = this.sendSearch.bind(this);
    }
    toggle() {
      this.setState({
        isOpen: !this.state.isOpen
      });
    }
    sendSearch(){
      
        let healthCardValue = this.refs.search.value;
        console.log(healthCardValue);
        
      fetch(`http://localhost:4000/api/patients/${this.state.patientHealthCard}`, 
      {
        crossDomain: true,
        headers: {'Content-Type':'application/json'},
      })
          .then(res=> res.json())
          .then(res => this.setState({ apiResponse: res }));
      console.log(this.state.patientHealthCard);
  }
    render() {
      return (
        <div>
          <Navbar color="light" light expand="md">
            <NavbarBrand href="/">Patient Records</NavbarBrand>
            <NavbarToggler onClick={this.toggle} />
            <div>
              <FormGroup>
                <Label for="search">Search: </Label>
                <Input name="search" id="search" ref="search"></Input>
                <Button onClick={this.sendSearch}>Search</Button>
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
      );
    }
  }
