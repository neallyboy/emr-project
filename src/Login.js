import React from 'react';
import { Button, Form, FormGroup, Label, Input, FormText } from 'reactstrap';

export default class Login extends React.Component {
    constructor(props) {
        super(props);
        this.state = { apiResponse: "" };
      }
    
      callAPI() {
          fetch("http://localhost:4000/api/login", 
          {
            crossDomain: true,
            headers: {'Content-Type':'application/json'},
          })
              .then(res=> res.json())
              .then(res => this.setState({ apiResponse: res }));
      }


    render(){
        return(   
        <div>   
        <FormGroup>
          <Label for="username">User Name</Label>
          <Input name="username" id="username" />
        </FormGroup>
        <FormGroup>
          <Label for="password">Password</Label>
          <Input type="password" name="password" id="password" />
        </FormGroup>
        <FormGroup>
            <button onclick="callAPI()">Submit</button>
        </FormGroup>
        </div>
    );
  }
}
