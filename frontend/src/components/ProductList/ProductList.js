import React from 'react';
import "./ProductList.scss";
import Product from "../Product/Product";

const ProductList = ({products}) => {
  return (
    <div className='product-lists grid bg-whitesmoke my-3'>
      {
        products.map(product => {
          // let discountedPrice = (product.price) - (product.price * (product.discountPercentage / 100));
          // let discountedPrice=100;
          return (
            // <Product key = {product.PRODUCT_ID} product = {{...product, discountedPrice}} />
            <Product key = {product.PRODUCT_ID} product = {product} />

          )
        })
      }
    </div>
  )
}

export default ProductList