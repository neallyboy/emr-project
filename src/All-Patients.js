import React from 'react';
import DataTable from 'react-data-table-component';
 
//const data = [{ patient_id: 1, title: 'Conan the Barbarian', year: '1982' }];
const columns = [
  {
    name: 'Patient Id',
    selector: 'patient_id',
    sortable: true,
  },
  {
    name: 'Health Card Number',
    selector: `health_card_number`,
    sortable: true,
  },
  {
    name: 'First Name',
    selector: `first_name`,
    sortable: true,
  },
  {
    name: 'Last Name',
    selector: `last_name`,
    sortable: true,
  },
  {
    name: 'Date of Birth',
    selector: `date_of_birth`,
    sortable: true,
  },
  {
    name: 'Gender',
    selector: `gender`,
    sortable: true,
  },
  {
    name: 'Street Number',
    selector: `street_number`,
    sortable: true,
  },
  {
    name: 'Street name',
    selector: `street_name`,
    sortable: true,
  },
  {
    name: 'State',
    selector: `state`,
    sortable: true,
  },
  {
    name: 'Zip Code',
    selector: `zip_code`,
    sortable: true,
  },
  {
    name: 'Phone',
    selector: `phone`,
    sortable: true,
  },
  {
    name: 'Email',
    selector: `email`,
    sortable: true,
  },
  {
    name: 'Insert Date',
    selector: `insert_date`,
    sortable: true,
  },
  {
    name: 'Last Update Date',
    selector: `last_update_date`
  }
];

export default class InfoTable extends React.Component {
  constructor(props) {
    super(props);
    this.state = { apiResponse: "" };
  }

  callAPI() {
      fetch("http://localhost:4000/api/patients", 
      {
        crossDomain: true,
        headers: {'Content-Type':'application/json'},
      })
          .then(res=> res.json())
          .then(res => this.setState({ apiResponse: res }));
  }

  componentDidMount() {
      this.callAPI();
      //console.log(this.state);
  }
  render(){
      //const { response }= this.state.apiResponse;
      return(
        <div>
          <DataTable
          title="Patients"
          columns={columns}
          data={this.state.apiResponse}
        />
        </div>
      )}

}