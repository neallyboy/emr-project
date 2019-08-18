import React from 'react';
import { Button, Form, FormGroup, Label, Input, FormText } from 'reactstrap';

export default class Login extends React.Component {
    constructor(props) {
        super(props);
        this.state = { 
          apiResponse: "",
          user: "",
          password: "",
        };
        this.updateInputPassValue = this.updateInputPassValue.bind(this);
        this.updateInputUserValue = this.updateInputUserValue.bind(this);
        this.callAPI = this.callAPI.bind(this);
      }
    
      async callAPI() {
        await this.setState({
          user: this.state.inputUser,
          password: this.state.inputPassword
        })
        console.log(this.state.user);
        const loginDetails = {user: `${this.state.user}`, password: `${this.state.password}`};
        console.log(loginDetails);
        fetch("http://localhost:4000/api/login", 
          {
            crossDomain: true,
            headers: {'Content-Type':'application/json'},
            method: 'post',
            body: JSON.stringify(loginDetails)
          })
      }
      async updateInputUserValue(evt){
        await this.setState({
          inputUser: evt.target.value
        })};
      async updateInputPassValue(evt){
        await this.setState({
          inputPassword: evt.target.value
        })}

    render(){
        return(   
        <div>   
        <FormGroup>
          <Label for="username">User Name</Label>
          <Input name="username" id="username" value={this.state.inputUser} onChange={evt => this.updateInputUserValue(evt)}/>
        </FormGroup>
        <FormGroup>
          <Label for="password">Password</Label>
          <Input type="password" name="password" id="password" value={this.state.inputPassword} onChange={evt => this.updateInputPassValue(evt)} />
        </FormGroup>
        <FormGroup>
            <button onClick={()=>this.callAPI()}>Submit</button>
        </FormGroup>
        </div>
    );
  }
}
