import React from "react";

const Product = (props) => {
  return (
    <div className="product">
      <img src={props.product.IMAGE} alt={props.product.TITLLE} />
      <h4>{props.product.TITLLE}</h4>
      <p>Price: ${props.product.PRICE}</p>
      <p>Stock: {props.product.STOCK}</p>
      <p>Description: {props.product.DESCRIPTION}</p>
    </div>
  );
};

export default Product;
