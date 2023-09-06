// components/LayoutWithHeaderFooter.js
import React from 'react';
import Header from '../Header/Header';
import Footer from '../Footer/Footer';
import Sidebar from '../Sidebar/Sidebar';

const LayoutWithHeaderFooter = ({ children }) => {
  return (
    <>
      <Header />
      <Sidebar />
      {children}
      <Footer />
    </>
  );
};

export default LayoutWithHeaderFooter;
