import React from "react";
import { Link } from "react-router-dom";
import { formatPrice } from "../../utils/helpers";
import "./Product.scss";

const Product = ({ product }) => {
  return (
    <Link to={`/product/${product?.PRODUCT_ID}`} key={product?.PRODUCT_ID}>
      <div className="product-item bg-white">
        <div className="category">{product?.CATEGORY_NAME}</div>
        <div className="product-item-img">
          <img
            className="img-cover"
            src={product?.IMAGE}
            alt={product.TITLLE}
          />
        </div>
        <div className="product-item-info fs-14">
          <div className="brand">
            <span>Brand: </span>
            <span className="fw-7">{product?.BRAND}</span>
          </div>
          <div className="title py-2">{product?.TITLLE}</div>
          <div className="price flex align-center justify-center">
          {product?.PERCENT_DISCOUNT!=0 &&
            <span className="old-price">{formatPrice(product?.PRICE)}</span>}
            <span className="new-price">
              {formatPrice(product?.DISCOUNTED_PRICE)}
            </span> 
            {product?.PERCENT_DISCOUNT!=0 &&
            <span className="discount fw-6">
              ({product?.PERCENT_DISCOUNT}% Off)
            </span>}
          </div>
        </div>
      </div>
    </Link>
  );
};

export default Product;


