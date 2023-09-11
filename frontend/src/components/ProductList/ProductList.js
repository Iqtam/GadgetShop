import React from 'react';
import "./ProductList.scss";
import Product from "../Product/Product";

const ProductList = ({products}) => {
  return (
    <div className='product-lists grid bg-whitesmoke my-3'>
      {
        products.map(product => {
          
          // let discountedPrice = (product.price) - (product.price * (product.discountPercentage / 100));
          // let DISCOUNTED_PRICE=100;
          // let PERCENT_DISCOUNT=10;
          
          return (
            <Product key = {product.PRODUCT_ID} product = {{...product}} />
            // <Product key = {product.PRODUCT_ID} product = {product} />

          )
        })
      }
      
    </div>
  )
}

export default ProductList