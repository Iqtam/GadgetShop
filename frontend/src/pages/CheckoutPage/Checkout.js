import * as React from "react";
import CssBaseline from "@mui/material/CssBaseline";
import AppBar from "@mui/material/AppBar";
import Box from "@mui/material/Box";
import Container from "@mui/material/Container";
import Toolbar from "@mui/material/Toolbar";
import Paper from "@mui/material/Paper";
import Stepper from "@mui/material/Stepper";
import Step from "@mui/material/Step";
import StepLabel from "@mui/material/StepLabel";
import Button from "@mui/material/Button";
import Link from "@mui/material/Link";
import Typography from "@mui/material/Typography";
import AddressForm from "./AddressForm";
import PaymentForm from "./PaymentForm";
import Review from "./Review";
import PaymentMethod from "./PaymentMethod";

import { selectUserInfo } from "../../store/userSlice";
import { useDispatch, useSelector } from "react-redux";
import { createOrderAsync } from "../../store/orderSlice";
import { Navigate } from "react-router-dom";
import { getAllCarts,clearCart } from "../../store/cartSlice";
const steps = ["Shipping address", "Payment details", "Review your order"];

export default function Checkout() {
  const userInfo = useSelector(selectUserInfo);
  const dispatch = useDispatch();
  const carts = useSelector(getAllCarts);
  console.log("crt checkout")
  console.log(carts);
  const [activeStep, setActiveStep] = React.useState(0);
  const [addressData, setAddressData] = React.useState({
    firstName: "",
    lastName: "",
    area: "",
    house: "",
    road: "",
    city: "",
    state: "",
    // shippingName:'',
  });
  const [paymentdata, setPaymentData] = React.useState({
    paymentMethod: "",
  });
  const updateAddressData = (newData) => {
    setAddressData({ ...addressData, ...newData });
  };
  const updatePaymentData = (newData) => {
    setPaymentData({ ...paymentdata, ...newData });
  };
  const handleNext = async () => {
    setActiveStep(activeStep + 1);
    if (activeStep === steps.length-1) {
      try {
        const orderData = {
          paymentMethod: paymentdata.paymentMethod,

          address: {
            firstName: addressData.firstName,
            lastName: addressData.lastName,
            area: addressData.area,
            house: addressData.house,
            road: addressData.road,
            city: addressData.city,
            state: addressData.state,
          },
          user: {
            id: userInfo.id,
            role: userInfo.role,
          }
          ,
          cart:carts,
        };
        await dispatch(clearCart());
        await dispatch(createOrderAsync(orderData));
        
      } catch (error) {
        console.error("Error creating order:", error);
      }
    }
  };

  const handleBack = () => {
    setActiveStep(activeStep - 1);
  };
  const getStepContent = (step) => {
    switch (step) {
      case 0:
        return <AddressForm onUpdateAddress={updateAddressData} />;
      case 1:
        return <PaymentMethod onUpdatePayment={updatePaymentData} />;
      case 2:
        return <Review paymentData={paymentdata} addressData={addressData} />;
      default:
        throw new Error("Unknown step");
    }
  };


  return (
    <>
    { (!userInfo) && <Navigate to="/"></Navigate>}
    {(carts.length==0) && <Navigate to="/"></Navigate> }
    <div className="min-h-screen">
      <React.Fragment>
        <CssBaseline />

        <Container component="main" maxWidth="sm" sx={{ mb: 4 }}>
          <Paper
            variant="outlined"
            sx={{ my: { xs: 3, md: 6 }, p: { xs: 2, md: 3 } }}
          >
            <Typography component="h1" variant="h4" align="center">
              Checkout
            </Typography>
            <Stepper activeStep={activeStep} sx={{ pt: 3, pb: 5 }}>
              {steps.map((label) => (
                <Step key={label}>
                  <StepLabel>{label}</StepLabel>
                </Step>
              ))}
            </Stepper>
            {activeStep === steps.length ? (
              <React.Fragment>
                <Typography variant="h5" gutterBottom>
                  Thank you for your order.
                </Typography>
                <Typography variant="subtitle1">
                  You can Track your Order Now.
                </Typography>
              </React.Fragment>
            ) : (
              <React.Fragment>
                {getStepContent(activeStep)}
                {console.log(addressData)}{console.log(paymentdata)}
                
                  <Box sx={{ display: "flex", justifyContent: "flex-end" }}>
                    {activeStep !== 0 && (
                      <Button onClick={handleBack} sx={{ mt: 3, ml: 1 }}>
                        Back
                      </Button>
                    )}

                    <Button
                      variant="contained"
                      onClick={handleNext}
                      sx={{ mt: 3, ml: 1 }}
                    >
                      {activeStep === steps.length - 1 ? "Place order" : "Next"}
                    </Button>
                  </Box>
                
                
              </React.Fragment>
            )}
          </Paper>
        </Container>
      </React.Fragment>
    </div>
    </>
  );
}
