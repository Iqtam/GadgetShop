import React, { useEffect } from "react";
import "../HomePage/HomePage.scss";
import HeaderSlider from "../../components/Slider/HeaderSlider";
import { useSelector, useDispatch } from "react-redux";
import { getAllCategories } from "../../store/categorySlice";
import ProductList from "../../components/ProductList/ProductList";
import {
 getSimilarProducts,
 fetchSimilarProductsAsync,
 getSimilarProductsStatus,

} from "../../store/productSlice";
import Loader from "../../components/Loader/Loader";
import { STATUS } from "../../utils/status";

const SimilarProduct = (props) => {
    const dispatch = useDispatch();
    const similarProducts=useSelector(getSimilarProducts);
    
    const similarProductsStatus=useSelector(getSimilarProductsStatus);
    React.useEffect(() => {
        const parameters={product_id:props.id,category_id:props.category_id,limit:props.limit}
        dispatch(fetchSimilarProductsAsync(parameters));
        console.log(similarProducts);
      }, [dispatch]);

  return (
    <main>
      
      <div className="main-content bg-whitesmoke">
        <div className="container">
          <div className="categories py-5">
            <div className="categories-item">
              <div className="title-md">
                <h3>See Similar products</h3>
              </div>
              {similarProductsStatus === STATUS.LOADING ? (
                <Loader />
              ) : (
                <ProductList products={similarProducts} />
              )}
            </div>

            
          </div>
        </div>
      </div>
    </main>
  );
};

export default SimilarProduct;
