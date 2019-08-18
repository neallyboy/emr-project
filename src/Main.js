import React from 'react';
import AllPatients from './All-Patients';
import { Jumbotron } from 'reactstrap';
import { Route } from "react-router-dom";
import Login from './Login';
import PatientDetails from './Patient-Details';

export default class Main extends React.Component {
    componentDidUpdate(){
        console.log(this.props.searchresponse);
      }
    render(){
        return(   
            <Jumbotron >
                <Route path="/patients" component={AllPatients}/>
                <Route path="/login" component={Login} />
                <Route path="/patientdetail" render={(props) => <PatientDetails {...props} searchdown={this.props.searchresponse}  />} />
            </Jumbotron>
        )}

}