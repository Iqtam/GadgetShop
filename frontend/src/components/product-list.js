import React, { Component } from "react";
import axios from "axios";
import Product from "./Product"; 

export default class ProductList extends Component {
  constructor(props) {
    super(props);
    this.state = { products: [] };
  }

  componentDidMount() {
    axios
      .get("http://localhost:5000/api/v1/products") 
      .then((response) => {
        console.log(response.data);
        this.setState({ products: response.data });
      })
      .catch((error) => {
        console.log(error);
      });
  }

  render() {
    return (
      <div>
        <h3>All Products</h3>
        <div className="product-list">
          {this.state.products.map((currentProduct) => (
            <Product key={currentProduct.product_id} product={currentProduct} />
          ))}
        </div>
      </div>
    );
  }
}
