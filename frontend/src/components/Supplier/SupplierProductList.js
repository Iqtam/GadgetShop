import React from 'react';
import "./SupplierProductList.scss";
import Product from "../Product/Product";
import { Link } from 'react-router-dom';
const SupplierProductList = ({products}) => {
  return (
    <div className='product-lists grid bg-whitesmoke my-3'>
      {
        products.map(product => {
          // let discountedPrice = (product.price) - (product.price * (product.discountPercentage / 100));
          // let discountedPrice=100;
          return (
            // <Product key = {product.PRODUCT_ID} product = {{...product, discountedPrice}} />
            <div>
            <Product key = {product.PRODUCT_ID} product = {product} />
            <div className="mt-5 flex space-x-4">
            
            <Link
              to={`/supplier/product-form/edit/${product.PRODUCT_ID}`}
              className="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
            >
              Edit 
            </Link>
            <Link
              to={`/supplier/product-delete/${product.PRODUCT_ID}`}
              className="rounded-md bg-red-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
            >
              Delete 
            </Link>
          </div>
          </div>

          )
        })
      }
      
    </div>
  )
}

export default SupplierProductList