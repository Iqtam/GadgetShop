import React, { useEffect } from "react";
import "./HomePage.scss";
import HeaderSlider from "../../components/Slider/HeaderSlider";
import { useSelector, useDispatch } from "react-redux";
import { getAllCategories } from "../../store/categorySlice";
import ProductList from "../../components/ProductList/ProductList";
import {
  fetchAsyncProducts,
  getAllProducts,
  getAllProductsStatus,
} from "../../store/productSlice";
import Loader from "../../components/Loader/Loader";
import { STATUS } from "../../utils/status";

const HomePage = () => {
  const dispatch = useDispatch();
  const categories = useSelector(getAllCategories);

  useEffect(() => {
    dispatch(fetchAsyncProducts(50));
    console.log("use effect ");
  }, []);

  const products = useSelector(getAllProducts);
  const productStatus = useSelector(getAllProductsStatus);

  // randomizing the products in the list
  const tempProducts = [];
  if (products.length > 0) {
    for (let i in products) {
      let randomIndex = Math.floor(Math.random() * products.length);

      while (tempProducts.includes(products[randomIndex])) {
        randomIndex = Math.floor(Math.random() * products.length);
      }
      tempProducts[i] = products[randomIndex];
    }
  }
  console.log("home page");
  console.log(products);
  console.log("product-category");
  console.log(categories);

  let catProductsOne = products.filter(
    (product) => product.CATEGORY_ID === categories[0].CATEGORY_ID
  );
  let catProductsTwo = products.filter(
    (product) => product.CATEGORY_ID === categories[1].CATEGORY_ID
  );
  let catProductsThree = products.filter(
    (product) => product.CATEGORY_ID === categories[2].CATEGORY_ID
  );
  let catProductsFour = products.filter(
    (product) => product.CATEGORY_ID === categories[3].CATEGORY_ID
  );

  return (
    <main>
      <div className="slider-wrapper">
        <HeaderSlider />
      </div>
      <div className="main-content bg-whitesmoke">
        <div className="container">
          <div className="categories py-5">
            <div className="categories-item">
              <div className="title-md">
                <h3>See our products</h3>
              </div>
              {productStatus === STATUS.LOADING ? (
                <Loader />
              ) : (
                <ProductList products={tempProducts} />
              )}
            </div>

            {categories.length > 0 && (
              <div className="categories-item">
                <div className="title-md">
                  <h3>{categories[0].CATEGORY_NAME}</h3>
                </div>
                {productStatus === STATUS.LOADING ? (
                  <Loader />
                ) : (
                  <ProductList products={catProductsOne} />
                )}
              </div>
            )}
            {categories.length > 0 && (
              <div className="categories-item">
                <div className="title-md">
                  <h3>{categories[1].CATEGORY_NAME}</h3>
                </div>
                {productStatus === STATUS.LOADING ? (
                  <Loader />
                ) : (
                  <ProductList products={catProductsTwo} />
                )}
              </div>
            )}
            {categories.length > 0 && (
              <div className="categories-item">
                <div className="title-md">
                  <h3>{categories[2].CATEGORY_NAME}</h3>
                </div>
                {productStatus === STATUS.LOADING ? (
                  <Loader />
                ) : (
                  <ProductList products={catProductsThree} />
                )}
              </div>
            )}
            {categories.length > 0 && (
              <div className="categories-item">
                <div className="title-md">
                  <h3>{categories[3].CATEGORY_NAME}</h3>
                </div>
                {productStatus === STATUS.LOADING ? (
                  <Loader />
                ) : (
                  <ProductList products={catProductsFour} />
                )}
              </div>
            )}
          </div>
        </div>
      </div>
    </main>
  );
};

export default HomePage;
