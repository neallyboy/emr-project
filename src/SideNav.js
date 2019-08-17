import React from 'react';
import { Nav, NavItem } from 'reactstrap';
import { NavLink } from "react-router-dom";

export default class SideNav extends React.Component {
  render() {
    return (
      <div>
        <Nav vertical>
          <NavItem>
            <NavLink to="/patients">Patients</NavLink>
          </NavItem>
          <NavItem>
            <NavLink to="/immunizations">Immunizations</NavLink>
          </NavItem>
          <NavItem>
            <NavLink href="#">Lab Tests</NavLink>
          </NavItem>
          <NavItem>
            <NavLink href="#">Patients</NavLink>
          </NavItem>
          <NavItem>
            <NavLink href="#">Allegy Cost</NavLink>
          </NavItem>
          <NavItem>
            <NavLink href="#">Allergy Revision</NavLink>
          </NavItem>
          <NavItem>
            <NavLink href="#">Billing Details</NavLink>
          </NavItem>
          <NavItem>
            <NavLink href="#">Care Provider</NavLink>
          </NavItem>
          <NavItem>
            <NavLink href="#">Patient Details</NavLink>
          </NavItem>
          <NavItem>
            <NavLink href="#">Patient Immunization</NavLink>
          </NavItem>
          <NavItem>
            <NavLink href="#">Radiology Images</NavLink>
          </NavItem>
        </Nav>
      </div>
    );
  }
}