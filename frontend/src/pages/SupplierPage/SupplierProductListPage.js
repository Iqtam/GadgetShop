import React, { useEffect } from "react";
import "./SupplierProductListPage.scss";
import { useSelector, useDispatch } from "react-redux";
import { getAllCategories } from "../../store/categorySlice";
import ProductList from "../../components/ProductList/ProductList";
import { Link } from "react-router-dom";
import {
  fetchAsyncProductsOfSupplier,
  getAllProducts,
  getAllProductsStatus,
} from "../../store/productSlice";
import Loader from "../../components/Loader/Loader";
import { STATUS } from "../../utils/status";
import SupplierProductList from "../../components/Supplier/SupplierProductList";
import { selectLoggedInUser } from "../../store/authenticationSlice";

const SupplierProductListPage = () => {
  const dispatch = useDispatch();
  const categories = useSelector(getAllCategories);
    const userInfo =useSelector(selectLoggedInUser);
  useEffect(() => {
    dispatch(fetchAsyncProductsOfSupplier(userInfo?.SUPPLIER_ID)); //// this should be supplier id
    console.log("use effect of supplier");
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
  console.log("supplier all product page");
  console.log(products);

  return (
    <main>
      <div className="main-content bg-whitesmoke">
        <div className="container">
          <div className="categories py-5">
            <div className="categories-item">
              <Link
                to="/supplier/product-form"
                className="rounded-md ml-auto mx-100 my-5 mb-10 bg-green-700 px-3 py-2 text-sm font-semibold text-white  shadow-sm hover:bg-green-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
              >
                Add New Product
              </Link>
              <div className="title-md mt-8">
                <h3>Your products</h3>
              </div>
              {productStatus === STATUS.LOADING ? (
                <Loader />
              ) : (
                <SupplierProductList products={tempProducts} />
              )}
            </div>
          </div>
        </div>
      </div>
    </main>
  );
};

export default SupplierProductListPage;
