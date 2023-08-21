import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import "bootstrap/dist/css/bootstrap.min.css";

import Navbar from "./navbar-component";
import CustomerList from "./customer-list";
import ProductList from "./product-list";
function App() {
  return (
    <Router>
      <div className="container">
        <Navbar />
        <br />
        <Routes>
          {/* <Route path="/" exact element={<CustomerList/>} /> */}
          <Route path="/" exact element={<ProductList />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
