import "./App.scss";
// react router v6
import { BrowserRouter, Routes, Route } from "react-router-dom";
// pages
import {
  PageNotFound,
  Login,
  Signup,
  Home,
  CategoryProduct,
  ProductSingle,
  Cart,
  Search,
  UserProfile,
  UserOrders,
  SupplierProductList,
  SupplierProductForm,
  SupplierOrders,
} from "./pages/index";
import Logout from "./components/Authentication/Logout";
// components
import Header from "./components/Header/Header";
import Sidebar from "./components/Sidebar/Sidebar";
import Footer from "./components/Footer/Footer";
import store from "./store/store";
import { Provider, useDispatch } from "react-redux";
import Checkout from "./pages/CheckoutPage/Checkout";
import { useSelector } from "react-redux";
import { selectLoggedInUser } from "./store/authenticationSlice";
import { useEffect } from "react";


import { fetchLoggedInUserAsync } from "./store/userSlice";
function App() {
  const dispatch = useDispatch();
  const user = useSelector(selectLoggedInUser);
  console.log(user);
  console.log("app")
  useEffect(() => {
    if (user) {
       dispatch(fetchLoggedInUserAsync(user?.user));
       console.log(user);
    }
  }, [user]);
  return (
    <div className="App">
      <Provider store={store}>
        <BrowserRouter>
          <Header />
          <Sidebar />
          <Routes>
            <Route
              path="/"
              element={
                <>
                  <Home />
                </>
              }
            />

            <Route
              path="/product/:id"
              element={
                <>
                  <ProductSingle />
                </>
              }
            />

            <Route
              path="/category/:category"
              element={
                <>
                  <CategoryProduct />
                </>
              }
            />

            <Route
              path="/cart"
              element={
                <>
                  <Cart />
                </>
              }
            />

            <Route
              path="/search/:searchTerm"
              element={
                <>
                  <Search />
                </>
              }
            />
            <Route path="/signin" element={<Login />} />
            <Route path="/signup" element={<Signup />} />
            <Route path="/signout" element={<Logout />} />
            <Route
              exact
              path="/customer/my-profile"
              element={<UserProfile />}
            />
            <Route exact path="/customer/my-orders" element={<UserOrders />} />
            <Route
              exact
              path="/supplier/my-products"
              element={<SupplierProductList />}
            />
            <Route
              exact
              path="/supplier/product-form/edit/:id"
              element={<SupplierProductForm />}
            />
            <Route exact path="/supplier/orders" element={<SupplierOrders />} />
            <Route exact path="/cart/checkout" element={<Checkout />} />
            <Route path="*" element={<PageNotFound />} />
          </Routes>
          <Footer />
        </BrowserRouter>
      </Provider>
    </div>
  );
}

export default App;
