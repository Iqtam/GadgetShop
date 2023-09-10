import React, {useEffect, useState} from 'react';
import "./ProductSinglePage.scss";
import {useParams} from "react-router-dom";
import {useSelector, useDispatch} from "react-redux";
import { fetchAsyncProductSingle, getProductSingle, getSingleProductStatus } from '../../store/productSlice';
import { STATUS } from '../../utils/status';
import Loader from "../../components/Loader/Loader";
import {formatPrice} from "../../utils/helpers";
import { addToCart, getCartMessageStatus, setCartMessageOff, setCartMessageOn } from '../../store/cartSlice';
import CartMessage from "../../components/CartMessage/CartMessage";
import { selectUserInfo } from '../../store/userSlice';

import ProductRiviews from './ProductRiviews';

const ProductSinglePage = () => {
  const {id} = useParams();
  const dispatch = useDispatch();
  const products = useSelector(getProductSingle);
  const userInfo = useSelector(selectUserInfo);
  const product=products[0]
  
  const productSingleStatus = useSelector(getSingleProductStatus);
  const [quantity, setQuantity] = useState(1);
  const cartMessageStatus = useSelector(getCartMessageStatus);

  // getting single product
  useEffect(() => {
    dispatch(fetchAsyncProductSingle(id));
    console.log("product single :");
    console.log(product);
    if(cartMessageStatus){
      setTimeout(() => {
        dispatch(setCartMessageOff());
      }, 2000);
    }
  }, [cartMessageStatus]);

  // let discountedPrice = (product?.price) - (product?.price * (product?.discountPercentage / 100));
  if(productSingleStatus === STATUS.LOADING) {
    return <Loader />
  }

  const increaseQty = () => {
    setQuantity((prevQty) => {
      let tempQty = prevQty + 1;
      if(tempQty > product?.STOCK) tempQty = product?.STOCK;
      return tempQty;
    })
  }

  const decreaseQty = () => {
    setQuantity((prevQty) => {
      let tempQty = prevQty - 1;
      if(tempQty < 1) tempQty = 1;
      return tempQty;
    })
  }

  const addToCartHandler = (product) => {
    // let discountedPrice = (product?.price) - (product?.price * (product?.discountPercentage / 100));
    let totalPrice = quantity * product?.DISCOUNTED_PRICE;
    // let totalPrice =quantity*product?.PRICE
    dispatch(addToCart({...product, quantity: quantity, totalPrice}));
    // dispatch(addToCart({...product, quantity: quantity, totalPrice}));
    dispatch(setCartMessageOn(true));
  }
  const titleParts = product?.TITLLE.split(' ');
  const brand = titleParts ? titleParts[0] : '';

  return (
    <main className='py-5 bg-whitesmoke min-h-screen'>
      <div className='product-single'>
        <div className='container'>
          <div className='product-single-content bg-white grid'>
            <div className='product-single-l'>
              <div className='product-img'>
                <div className='product-img-zoom'>
                  <img src = {product?(product.IMAGE ? product.IMAGE : "") : ""} alt = "" className='img-cover' />
                </div>
              </div>
            </div>

            <div className='product-single-r'>
              <div className='product-details font-manrope'>
                <div className='title fs-20 fw-5'>{product?.TITLLE}</div>
                <div>
                  <p className='para fw-3 fs-15'>{product?.DESCRIPTION}</p>
                </div>
                <div className='info flex align-center flex-wrap fs-14'>
                  <div className='rating'>
                    {/* <span className='text-orange fw-5'>Rating:</span>
                    <span className='mx-1'>
                      {product?.RATING|| 3}
                    </span> */}
                  </div>
                  <div className='vert-line'></div>
                  <div className='brand'>
                    <span className='text-orange fw-5'>Brand:</span>
                    <span className='mx-1'>{product?.BRAND}</span>
                  </div>
                  <div className='vert-line'></div>
                  <div className='brand'>
                    <span className='text-orange fw-5'>Category:</span>
                    <span className='mx-1 text-capitalize'>
                      {product?.CATEGORY_NAME ? product.CATEGORY_NAME.replace("-", " ") : ""}
                    </span>
                  </div>
                </div>

                <div className = "price">
                  <div className='flex align-center'>
                    {product?.PERCENT_DISCOUNT!=0 &&
                    <div className='old-price text-gray'>
                      {formatPrice(product?.PRICE)}
                    </div>}
                    <span className='fs-14 mx-2 text-dark'>
                      Inclusive of all taxes
                    </span>
                  </div>

                  <div className='flex align-center my-1'>
                  {product?.PERCENT_DISCOUNT!=0 &&
                    <div className='discount bg-orange fs-13 text-white fw-6 font-poppins'>
                      {product?.PERCENT_DISCOUNT}% OFF
                    </div>}
                  </div>
                  <div className='flex align-center my-1'>
                    <div className='new-price fw-5 font-poppins fs-24 text-orange'>
                      {formatPrice(product?.DISCOUNTED_PRICE)}
                    </div>
                  </div>

                </div>
                {userInfo?.role==="customer" && 
                <div>
                <div className='qty flex align-center my-4'>
                  <div className='qty-text'>Quantity:</div>
                  <div className='qty-change flex align-center mx-3'>
                    <button type = "button" className='qty-decrease flex align-center justify-center' onClick={() => decreaseQty()}>
                      <i className='fas fa-minus'></i>
                    </button>
                    <div className = "qty-value flex align-center justify-center">{quantity}</div>
                    <button type = "button" className='qty-increase flex align-center justify-center' onClick={() => increaseQty()}>
                      <i className='fas fa-plus'></i>
                    </button>
                  </div>
                  {
                    (product?.STOCK === 0) ? <div className ='qty-error text-uppercase bg-danger text-white fs-12 ls-1 mx-2 fw-5'>out of stock</div> : ""
                  }
                </div>
                  
                  
                <div className='btns'>
                  <button type = "button" className='add-to-cart-btn btn'>
                    <i className='fas fa-shopping-cart'></i>
                    <span className='btn-text mx-2' onClick={() => { addToCartHandler(product)}}>add to cart</span>
                  </button>
                  {/* <button type = "button" className='buy-now btn mx-3'>
                    <span className='btn-text'>buy now</span>
                  </button> */}
                </div>
                </div>}
              </div>
            </div>
            {console.log(product?.PRODUCT_ID)}
            <ProductRiviews id={product?.PRODUCT_ID}/>
          </div>
        </div>
        

      </div>

      {cartMessageStatus && <CartMessage />}
    </main>
  )
}

export default ProductSinglePage