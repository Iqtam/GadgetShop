import { useSelector, useDispatch } from "react-redux";
import {
  selectError,
  selectLoggedInUser,
} from "../../store/authenticationSlice";
import { Link, Navigate } from "react-router-dom";
import { loginUserAsync } from "../../store/authenticationSlice";
import { useForm } from "react-hook-form";
import "./Login.scss";

export default function Login() {
  const dispatch = useDispatch();
  const error = useSelector(selectError);
  const user = useSelector(selectLoggedInUser);
  console.log(user);
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm();
  const onSubmit = (data) => {
    dispatch(loginUserAsync({ email: data.email, password: data.password }));
    console.log(data);
  };

  return (
    <>
      {user && <Navigate to="/" replace={true}></Navigate>}

      <div className="login-container">
        <span className="navbar-brand-ico">
          <i className="fa-solid fa-bag-shopping"></i>
        </span>
        <span className="navbar-brand-txt mx-2">
          <span className="fw-7">Gadget</span>Shop.
        </span>
        <form onSubmit={handleSubmit(onSubmit)} className="login-form">
          <div>
            <label htmlFor="email">Email</label>
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
              className="login-input"
              placeholder="Enter your email"
            />
            {errors.email && (
              <p className="login-validation">{errors.email.message}</p>
            )}
          </div>
          <div>
            <label htmlFor="password">Password</label>
            <input
              {...register("password", {
                required: "Password is required",
              })}
              type="password"
              id="password"
              className="login-input"
              placeholder="Enter your password"
            />
            {errors.password && (
              <p className="login-validation">{errors.password.message}</p>
            )}
          </div>
          <div>
            {console.log(error)}
            {error && <p className="login-validation">{JSON.parse(error).error}</p>}
          </div>
          <button type="submit" className="login-button">
            Log In
          </button>
        </form>

        <div className="login-links">
          <p>
            Don't have an account?{" "}
            <Link to="/signup" className="login-link">
              Sign Up
            </Link>
          </p>
        </div>
      </div>
    </>
  );
}
