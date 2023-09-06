import React, { useState } from 'react';
import "./UserProfile.scss"

const UserProfile = () => {
  const initialUserData = {
    first_name: 'John',
    last_name: 'Doe',
    date_of_birth: '1990-01-01',
    house: '123 Main St',
    road: 'Apt 4B',
    area: 'Downtown',
    state: 'CA',
    city: 'Los Angeles',
    contact_number: '123-456-7890',
    email: 'john.doe@example.com',
    password: '********', // You should never display the actual password
  };

  const [userData, setUserData] = useState(initialUserData);
  const [editPersonal, seteditPersonal] = useState(false);
  const [editAddress, seteditAddress] = useState(false);
  const [editContact, seteditContact] = useState(false);
  const [editEmailPassword, seteditEmailPassword] = useState(false);

  const handleeditPersonal = () => {
    seteditPersonal(true);
  };
  const handleeditAddress = () => {
    seteditAddress(true);
  };
  const handleeditContact = () => {
    seteditContact(true);
  };
  const handleeditEmailPassword = () => {
    seteditEmailPassword(true);
  };

  const handleSavePersonal = () => {
    // Implement logic to save the updated data to the server or state here
    seteditPersonal(false);
  };
  const handleSaveAddress = () => {
    // Implement logic to save the updated data to the server or state here
    seteditAddress(false);
  };
  const handleSaveContact = () => {
    // Implement logic to save the updated data to the server or state here
    seteditContact(false);
  };
  const handleSaveEmailPassword = () => {
    // Implement logic to save the updated data to the server or state here
    seteditEmailPassword(false);
  };

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setUserData({
      ...userData,
      [name]: value,
    });
  };

  const renderButton = (section) => {
    if (editMode) {
      return (
        <button className='update-button' onClick={handleSaveClick}>
          Save
        </button>
      );
    } else {
      return (
        <button className='update-button' onClick={handleEditClick}>
          Edit
        </button>
      );
    }
  };

  return (
    <div className="maincontent">
      <form className='login-form'>
        <h1>My Profile</h1>
        <div className="personal-information">
          <div className="info-section">
            <h2>Personal Information</h2>
            <div>
              <label>First Name:</label>
              <input
                type="text"
                className="login-input"
                name="first_name"
                value={userData.first_name}
                readOnly={!editMode}
                onChange={handleInputChange}
              />
            </div>
            <div>
              <label>Last Name:</label>
              <input
                type="text"
                className="login-input"
                name="last_name"
                value={userData.last_name}
                readOnly={!editMode}
                onChange={handleInputChange}
              />
            </div>
            <div>
              <label>Date of Birth:</label>
              <input
                type="date"
                className="login-input"
                name="date_of_birth"
                value={userData.date_of_birth}
                readOnly={!editMode}
                onChange={handleInputChange}
              />
            </div>
          </div>
          <div>{renderButton('personal-information')}</div>
        </div>
      <div className="address">
        <div className="info-section">
          <h2>Address</h2>
          <div>
            <label>House:</label>
            <input
                type="text"
                className="login-input"
                name="house"
                value={userData.house}
                readOnly={!editMode}
                onChange={handleInputChange}
              />
            
          </div>
          <div>
            <label>Road:</label>
            <input
                type="text"
                className="login-input"
                name="house"
                value={userData.road}
                readOnly={!editMode}
                onChange={handleInputChange}
              />
          </div>
          <div>
            <label>Area:</label>
            <input
                type="text"
                className="login-input"
                name="house"
                value={userData.area}
                readOnly={!editMode}
                onChange={handleInputChange}
              />
          </div>
          <div>
            <label>State:</label>
            <input
                type="text"
                className="login-input"
                name="house"
                value={userData.state}
                readOnly={!editMode}
                onChange={handleInputChange}
              />
          </div>
          <div>
            <label>City:</label>
            <input
                type="text"
                className="login-input"
                name="house"
                value={userData.city}
                readOnly={!editMode}
                onChange={handleInputChange}
              />
          </div>
        </div>
        <div >
        <div>{renderButton('address')}</div>
        </div>
      </div>
      <div className="contact-number">
          <div className="info-section">
            <h2>Contact Number</h2>
            <div>
              <label>Contact Number:</label>
              <input
                type="text"
                className="login-input"
                name="contact_number"
                value={userData.contact_number}
                readOnly={!editMode}
                onChange={handleInputChange}
              />
            </div>
          </div>
          <div>{renderButton('contact-number')}</div>
        </div>
        <div className="email-and-password">
          <div className="info-section">
            <h2>Email and Password</h2>
            <div>
              <label>Email:</label>
              <input
                type="text"
                className="login-input"
                name="email"
                value={userData.email}
                readOnly={!editMode}
                onChange={handleInputChange}
              />
            </div>
            <div>
              <label>Password:</label>
              <input
                type="password"
                className="login-input"
                name="password"
                value={userData.password}
                readOnly={!editMode}
                onChange={handleInputChange}
              />
            </div>
          </div>
          <div>{renderButton('email-and-password')}</div>
        </div>
        {/* Add buttons for Save/Update outside of individual sections if needed */}
        {editMode && (
          <div className="save-buttons">
            <button className='update-button' onClick={handleSaveClick}>
              Save
            </button>
          </div>
        )}
      </form>
    </div>
  );
};

export default UserProfile;
