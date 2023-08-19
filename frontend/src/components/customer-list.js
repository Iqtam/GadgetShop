import React, { Component } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
const Customer = (props) => {
    console.log(props.customer);
    return (
    <div className="customer">
      <p>
        <strong>Customer ID:</strong>
        {props.customer.CUSTOMER_ID}
      </p>
      <p>
        <strong>Name:</strong> {props.customer.FIRST_NAME}{" "}
        {props.customer.LAST_NAME}
      </p>
      <p>
        <strong>Location:</strong> {props.customer.AREA}, {props.customer.CITY},{" "}
        {props.customer.STATE}
      </p>
      <p>
        <strong>Address:</strong> {props.customer.HOUSE}, {props.customer.ROAD}
      </p>
      <p>
        <strong>Email:</strong> {props.customer.EMAIL}
      </p>
      <p>
        <strong>Date of Birth:</strong> {props.customer.DATE_OF_BIRTH}
      </p>
    </div>
  );
};

export default class CustomerList extends Component {
  constructor(props) {
    super(props);
    this.state = { customers: [] };
  }

  componentDidMount() {
    axios
      .get("http://localhost:5000/api/v1/customer")
      .then((response) => {
        console.log(response.data);
        this.setState({ customers: response.data });
      })
      .catch((error) => {
        console.log(error);
      });
  }

  customerList() {
    return this.state.customers.map((currentCustomer) => {
      return <Customer customer={currentCustomer} />;
    });
  }

  render() {
    console.log(this.state.customers);
    return (
      <div>
        <h3>All Customers</h3>
        <div className="customer-list">
          {this.state.customers.map((currentCustomer) => {
            console.log(currentCustomer); // Check the customer object
            return (
              <Customer
                key={currentCustomer.customer_id}
                customer={currentCustomer}
              />
            );
          })}
        </div>
      </div>
    );
  }
}
