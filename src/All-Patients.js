import React from 'react';
import DataTable from 'react-data-table-component';
import {Button, Form, FormGroup, Label, Input} from 'reactstrap';
 
//const form = false
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
    this.state = { 
      apiResponse: "",
      clearSelectedRows: false,
      selectedRows: '',
      form: false,
      formProperties: '',
      createRecord: false,
      formRenderTable: '',
    };
    this.deleteRecord = this.deleteRecord.bind(this);
    this.rowSelected = this.rowSelected.bind(this);
    this.createRecord = this.createRecord.bind(this);
    this.submitForm = this.submitForm.bind(this);
  }

  async callAPI() {
      let response = await fetch("http://localhost:4000/api/patients", {
        crossDomain: true,
        headers: {'Content-Type':'application/json'},
      });
      let responseJSON = await response.json()
      await this.setState({ apiResponse: responseJSON });
      console.log(this.state.apiResponse);
  }
  async rowSelected(state){
    await this.setState({selectedRows: state.selectedRows});
    console.log(this.state.selectedRows);
  }
  async deleteRecord(){
    const deletingRows = this.state.selectedRows;
    deletingRows.forEach( async (record)=>{
      await fetch(`http://localhost:4000/api/patient/${record.patient_id}`, 
        {
          method: 'delete',
          crossDomain: true,
          headers: {'Content-Type':'application/json'},
        })
    })
    this.setState({clearSelectedRows: !this.state.clearSelectedRows});
    this.callAPI();
  }

  async submitForm(e){
    const formData = new FormData(e.target)
   const user = {}

   e.preventDefault()

   for (let entry of formData.entries()) {
       user[entry[0]] = entry[1]
   }

   console.log(user);
   let fetchResponse = await fetch(`http://localhost:4000/api/patient`, 
          {
            crossDomain: true,
            headers: {'Content-Type':'application/json'},
            method: 'post',
            body: JSON.stringify(user)
          })
    console.log(fetchResponse);
          this.state.createRecord = false;
          await this.callAPI();
          

  }

  async createRecord(){
    this.setState({createRecord:true});
    this.state.formRenderTable = () => {
      return(
        <Form onSubmit={this.submitForm}>
          <FormGroup>
            <Label for='health_card_number'>Health Card Number</Label>
            <Input type="text" name='health_card_number' id='health_card_number'></Input>
          </FormGroup>
          <FormGroup>
            <Label for='first_name'>First Name</Label>
            <Input type="text" name='first_name' id='first_name'></Input>
          </FormGroup>
          <FormGroup>
            <Label for='last_name'>Last Name</Label>
            <Input type="text" name='last_name' id='last_name'></Input>
          </FormGroup>
          <FormGroup>
            <Label for='date_of_birth'>Date of Birth</Label>
            <Input type="date" name='date_of_birth' id='date_of_birth' ></Input>
          </FormGroup>
          <FormGroup>
            <Label for='gender'>Gender</Label>
            <Input type="text" name='gender' id='gender' ></Input>
          </FormGroup>
          <FormGroup>
            <Label for='street_number'>Street Number</Label>
            <Input type="text" name='street_number' id='street_number'></Input>
          </FormGroup>
          <FormGroup>
            <Label for='street_name'>Street Name</Label>
            <Input type="text" name='street_name' id='street_name'></Input>
          </FormGroup>
          <FormGroup>
            <Label for='state'>State</Label>
            <Input type="text" name='state' id='state'></Input>
          </FormGroup>
          <FormGroup>
            <Label for='zip_code'>Zip Code</Label>
            <Input type="text" name='zip_code' id='zip_code'></Input>
          </FormGroup>
          <FormGroup>
            <Label for='phone'>Phone</Label>
            <Input type="text" name='phone' id='phone'></Input>
          </FormGroup>
          <FormGroup>
            <Label for='email'>Email</Label>
            <Input type="email" name='email' id='email'></Input>
          </FormGroup>
          <Button>Submit</Button>
        </Form>
      )
      
    }
  }

  componentDidMount() {
      this.callAPI();
      //console.log(this.state);
  }

  render(){

      return(
        <div>
          <Button onClick={this.deleteRecord}>Delete</Button>
          <Button onClick={this.createRecord}>Create</Button>
          { !this.state.createRecord ? <DataTable
          title="Patients"
          columns={columns}
          data={this.state.apiResponse}
          selectableRows
          onRowSelected={this.rowSelected}
          clearSelectedRows={this.state.clearSelectedRows}
        /> : this.state.formRenderTable()}
        </div>
      )}

}