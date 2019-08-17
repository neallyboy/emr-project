import React from 'react';
import DataTable from 'react-data-table-component';
 
//const data = [{ id: 1, title: 'Conan the Barbarian', year: '1982' }];
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
      fetch("http://localhost:9000/testAPI")
          .then(res => res.text())
          .then(res => this.setState({ apiResponse: res }));
  }

  componentWillMount() {
      this.callAPI();
  }
  render(){
      return(
          <DataTable
          title="Arnold Movies"
          columns={columns}
          data={data}
        />
      )}

}