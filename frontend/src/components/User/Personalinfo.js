import React, { useState } from 'react';
import './Personalinfo.scss';

const PersonalInfoForm = () => {
  const [name, setName] = useState('Md. Tamim Iqbal');
  const [dob, setDob] = useState('2002-01-20');
  const [gender, setGender] = useState('male');

  const handleSave = () => {
    // Handle the save action here
  };

  return (
    <div className="user-information-container">
    <div className="user-information">
      <h2>Personal Information</h2>
      <div className="personal-info">
        <div className="form-group">
          <label htmlFor="firstName">First Name:</label>
          <input type="text" id="firstName" name="firstName" />
        </div>
        <div className="form-group">
          <label htmlFor="lastName">Last Name:</label>
          <input type="text" id="lastName" name="lastName" />
        </div>
        <div className="form-group">
          <label htmlFor="dob">Date of Birth:</label>
          <input type="date" id="dob" name="dob" />
        </div>
      </div>

      <h2>Address</h2>
      <div className="address">
        <div className="form-group">
          <label htmlFor="house">House:</label>
          <input type="text" id="house" name="house" />
        </div>
        <div className="form-group">
          <label htmlFor="road">Road:</label>
          <input type="text" id="road" name="road" />
        </div>
        <div className="form-group">
          <label htmlFor="area">Area:</label>
          <input type="text" id="area" name="area" />
        </div>
        <div className="form-group">
          <label htmlFor="state">State:</label>
          <input type="text" id="state" name="state" />
        </div>
        <div className="form-group">
          <label htmlFor="city">City:</label>
          <input type="text" id="city" name="city" />
        </div>
      </div>

      <h2>Contact Number</h2>
      <div className="contact">
        <div className="form-group">
          <label htmlFor="phoneNumber">Phone Number:</label>
          <input type="tel" id="phoneNumber" name="phoneNumber" />
        </div>
      </div>

      <h2>Email and Password</h2>
      <div className="email-password">
        <div className="form-group">
          <label htmlFor="email">Email:</label>
          <input type="email" id="email" name="email" />
        </div>
        <div className="form-group">
          <label htmlFor="password">Password:</label>
          <input type="password" id="password" name="password" />
        </div>
      </div>
    </div>
    </div>
  

  );
};

export default PersonalInfoForm;
