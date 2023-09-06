import { useState } from "react";
import { Link } from "react-router-dom";
import "./Signup.scss"; // Import the SCSS file
import { useDispatch, useSelector } from "react-redux";
import {
  selectLoggedInUser,
  createUserAsync,
} from "../../store/authenticationSlice";
import { Navigate } from "react-router-dom";
import { useForm } from "react-hook-form";

export default function Signup() {
  const dispatch = useDispatch();
  const user = useSelector(selectLoggedInUser);
  const [userRole, setUserRole] = useState("customer");

  const handleRoleChange = (event) => {
    setUserRole(event.target.value);
  };
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm();

  const onSubmit = (event) => {
    // event.preventDefault();
    dispatch(
      createUserAsync({
        email: event.email,
        password: event.password,
        firstName: event.firstName,
        lastName: event.lastName,
        role: userRole,
      })
    );
    console.log(event);
  };

  return (
    <>
      {user && <Navigate to="/" replace={true}></Navigate>}
      <div className="signup-container">
        <span className="navbar-brand-ico">
          <i className="fa-solid fa-bag-shopping"></i>
        </span>
        <span className="navbar-brand-txt mx-2">
          <span className="fw-7">Gadget</span>Shop.
        </span>
        <form onSubmit={handleSubmit(onSubmit)} className="signup-form">
          <label htmlFor="role">Select Role:</label>
          <select
            value={userRole}
            onChange={handleRoleChange}
            className="signup-select"
          >
            <option value="customer">Customer</option>
            <option value="supplier">Supplier</option>
          </select>
          <div>
            <label htmlFor="firstName">First Name:</label>
            <input
            {...register("firstName", {
              required: "First Name is required",
            })}
              type="text"
              id="firstName"
              className="signup-input"
              placeholder="Enter your first name"
            />
          </div>
          <div>
            <label htmlFor="lastName">Last Name:</label>
            <input
              {...register("lastName", {
                required: "Last Name is required",
              })}
              type="text"
              id="lastName"
              className="signup-input"
              placeholder="Enter your last name"
            />
            {errors.lastName && (
              <p className="signup-validation">{errors.lastName.message}</p>
            )}
          </div>
          <div>
            <label htmlFor="email">Email:</label>
            <input
              {...register("email", {
                required: "Email is required",
                pattern: {
                  value: /\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b/gi,
                  message: "Email not valid",
                },
              })}
              type="email"
              id="email"
              className="signup-input"
              placeholder="Enter your email"
            />
            {errors.email && (
              <p className="signup-validation">{errors.email.message}</p>
            )}
          </div>
          <div>
            <label htmlFor="password">Password:</label>
            <input
              {...register("password", {
                required: "Password is required",
                pattern: {
                  value:
                    /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/gm,
                  message: `- at least 8 characters\n
            - must contain at least 1 uppercase letter, 1 lowercase letter, and 1 number\n
            - Can contain special characters`,
                },
              })}
              type="password"
              id="password"
              className="signup-input"
              placeholder="Enter your password"
            />
            {errors.password && (
              <p className="signup-validation">{errors.password.message}</p>
            )}
          </div>
          <button type="submit" className="signup-button">
            Sign Up
          </button>
        </form>

        <div className="signup-links">
          <p>
            Already have an account?{" "}
            <Link to="/signin" className="signup-link">
              Log In
            </Link>
          </p>
        </div>
      </div>
    </>
  );
}
