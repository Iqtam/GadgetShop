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
  
} from "./pages/index";
// components
import Header from "./components/Header/Header";
import Sidebar from "./components/Sidebar/Sidebar";
import Footer from "./components/Footer/Footer";
import store from "./store/store";
import { Provider } from "react-redux";



function App() {
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
            <Route exact path="/customer/my-profile" element={<UserProfile />} />
            <Route exact path="/customer/my-orders" element={<UserOrders />} />
            <Route exact path="/supplier/product-list" element={<SupplierProductList />} />
            <Route exact path="/supplier/product-form/edit/:id" element={<SupplierProductForm/>} />
            <Route path='*' element={<PageNotFound/>} />
          </Routes>
          <Footer />
        </BrowserRouter>
      </Provider>
    </div>
  );
}

export default App;
