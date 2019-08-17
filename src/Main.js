import React from 'react';
import AllPatients from './All-Patients';
import { Jumbotron } from 'reactstrap';
import { Route } from "react-router-dom";
import Login from './Login';

export default class Main extends React.Component {

    render(){
        return(   
            <Jumbotron>
                <Route path="/patients" component={AllPatients}/>
                <Route path="/login" component={Login} />
            </Jumbotron>
        )}

}