import { useEffect } from 'react';
import { selectLoggedInUser, resetUser } from "../../store/authenticationSlice";
import { useDispatch, useSelector } from 'react-redux';
import { Navigate } from 'react-router-dom';
// import { resetUserInfo } from '../../store/userSlice';
function Logout() {
  const dispatch = useDispatch();
  const user = useSelector(selectLoggedInUser);
  
  // useEffect(() => {
  //   // dispatch(resetUser());
  //   // dispatch(resetUserInfo());
  // });

  // but useEffect runs after render, so we have to delay navigate part
  return <>{!user && <Navigate to="/signin" replace={true}></Navigate>}</>;
}

export default Logout;
