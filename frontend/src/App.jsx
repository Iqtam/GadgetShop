import React, { useState } from 'react';
import LoginPage from './LoginPage';
import CustomerPage from './CustomerPage';

function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  const handleLogin = () => {
    setIsLoggedIn(true);
  };

  return (
    <div>
      {isLoggedIn ? (
        <CustomerPage />
      ) : (
        <LoginPage onLogin={handleLogin} />
      )}
    </div>
  );
}

export default App;
