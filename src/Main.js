import React from 'react';
import InfoTable from './Info-table';
import { Jumbotron } from 'reactstrap';

export default class Main extends React.Component {

    render(){
        return(   
            <Jumbotron><InfoTable /></Jumbotron>
        )}

}