import React from 'react';
import DataTable from 'react-data-table-component';
import { Button, Form, FormGroup, Label, Input } from 'reactstrap';
//import { Link } from 'react-router-dom';
 

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

export default class PatientDetails extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      clearSelectedRows: false,
      selectedRows: '',
      formRender: '',
      updateRecord:false,
      dataTable:false,
      searchDown: ''
    }
    this.deleteRecord = this.deleteRecord.bind(this);
    this.rowSelected = this.rowSelected.bind(this);
    this.updateRecord = this.updateRecord.bind(this);
    this.submitForm = this.submitForm.bind(this);
    this.dataTableFn = this.dataTableFn.bind(this);
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
    }

    )
    this.setState({clearSelectedRows: !this.state.clearSelectedRows});
    
  }

  async submitForm(e){
    const formData = new FormData(e.target)
   const user = {}

   e.preventDefault()

   for (let entry of formData.entries()) {
       user[entry[0]] = entry[1]
   }

   user.patient_id = this.state.selectedRows[0].patient_id;

   console.log(user);
   
   await fetch(`http://localhost:4000/api/patient/${this.state.selectedRows[0].patient_id}`, 
          {
            crossDomain: true,
            headers: {'Content-Type':'application/json'},
            method: 'put',
            body: JSON.stringify(user)
          })
          let response = await fetch(`http://localhost:4000/api/patient/${user.health_card_number}`, 
          {
            crossDomain: true,
            headers: {'Content-Type':'application/json'},
          })
          let responseJSON = await response.json();
          let dob = responseJSON.date_of_birth
          let dobsliced = dob.slice(0,10)
          console.log(dobsliced);
          responseJSON.date_of_birth = dobsliced;
          this.setState({
            updateRecord:false,
            searchDown: [responseJSON]
          });
          console.log(this.state.searchDown);
          
  }


  async dataTableFn(){
    
    this.state.dataTable = ()=>{
      return(<DataTable
          title="Patients"
          columns={columns}
          data={this.state.searchDown}
          selectableRows
          onRowSelected={this.rowSelected}
          clearSelectedRows={this.state.clearSelectedRows}
        />)
  }};

  async updateRecord(){
    this.setState({updateRecord:true});
    console.log(this.state.selectedRows[0].date_of_birth);
    this.state.formRender = () => {
      return(
        <Form onSubmit={this.submitForm}>
          <FormGroup>
            <Label for='health_card_number'>Health Card Number</Label>
            <Input type="text" name='health_card_number' id='health_card_number' defaultValue={this.state.selectedRows[0].health_card_number}></Input>
          </FormGroup>
          <FormGroup>
            <Label for='first_name'>First Name</Label>
            <Input type="text" name='first_name' id='first_name' defaultValue={this.state.selectedRows[0].first_name}></Input>
          </FormGroup>
          <FormGroup>
            <Label for='last_name'>Last Name</Label>
            <Input type="text" name='last_name' id='last_name' defaultValue={this.state.selectedRows[0].last_name}></Input>
          </FormGroup>
          <FormGroup>
            <Label for='date_of_birth'>Date of Birth</Label>
            <Input type="date" name='date_of_birth' id='date_of_birth' defaultValue={this.state.selectedRows[0].date_of_birth}></Input>
          </FormGroup>
          <FormGroup>
            <Label for='gender'>Gender</Label>
            <Input type="text" name='gender' id='gender' defaultValue={this.state.selectedRows[0].gender}></Input>
          </FormGroup>
          <FormGroup>
            <Label for='street_number'>Street Number</Label>
            <Input type="text" name='street_number' id='street_number' defaultValue={this.state.selectedRows[0].street_number}></Input>
          </FormGroup>
          <FormGroup>
            <Label for='street_name'>Street Name</Label>
            <Input type="text" name='street_name' id='street_name' defaultValue={this.state.selectedRows[0].street_name}></Input>
          </FormGroup>
          <FormGroup>
            <Label for='state'>State</Label>
            <Input type="text" name='state' id='state' defaultValue={this.state.selectedRows[0].state}></Input>
          </FormGroup>
          <FormGroup>
            <Label for='zip_code'>Zip Code</Label>
            <Input type="text" name='zip_code' id='zip_code' defaultValue={this.state.selectedRows[0].zip_code}></Input>
          </FormGroup>
          <FormGroup>
            <Label for='phone'>Phone</Label>
            <Input type="text" name='phone' id='phone' defaultValue={this.state.selectedRows[0].phone}></Input>
          </FormGroup>
          <FormGroup>
            <Label for='email'>Email</Label>
            <Input type="email" name='email' id='email' defaultValue={this.state.selectedRows[0].email}></Input>
          </FormGroup>
          <Button>Submit</Button>
        </Form>
      )
      
    }
  }

  componentWillMount(){
    this.setState({searchDown: this.props.searchdown});
    this.dataTableFn();
}

  render(){
    console.log(this.state.clearSelectedRows);
      return(
        <div>
          <Button onClick={this.updateRecord}>Update</Button>
          <Button onClick={this.deleteRecord}>Delete</Button>
          {!this.state.updateRecord ? this.state.dataTable() : this.state.formRender() }
        </div>
      )}

}