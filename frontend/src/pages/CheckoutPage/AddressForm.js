import * as React from "react";
import Grid from "@mui/material/Grid";
import Typography from "@mui/material/Typography";
import TextField from "@mui/material/TextField";
import FormControlLabel from "@mui/material/FormControlLabel";
import Checkbox from "@mui/material/Checkbox";
import ShippingMethod from "./Shipping Method";

import Autocomplete from "@mui/material/Autocomplete";
import Stack from "@mui/material/Stack";

import {
  fetchShippingMethodAsync,
  selectShippingMethods,
} from "../../store/orderSlice";
import { useSelector, useDispatch } from "react-redux";

export default function AddressForm({ onUpdateAddress }) {
  const handleInputChange = (e) => {
    onUpdateAddress({ [e.target.name]: e.target.value });
  };
  const shippingMethods = useSelector(selectShippingMethods);
  console.log(shippingMethods);
  const dispatch = useDispatch();
  React.useEffect(() => {
    dispatch(fetchShippingMethodAsync());
    console.log(shippingMethods);
  }, []);

  const flatProps = {
    options: shippingMethods.map(
      (option) => option.SHIPPING_NAME + " Charge :" + option.CHARGE
    ),
  };

  const [shippingMethod, setShippingMethod] = React.useState({
    SHIPPING_NAME: "",
    CHARGE: "",
  });
  return (
    <React.Fragment>
      <Typography variant="h6" gutterBottom>
        Shipping address
      </Typography>
      <Grid container spacing={3}>
        <Grid item xs={12} sm={6}>
          <TextField
            required
            id="firstName"
            name="firstName"
            label="First name"
            fullWidth
            autoComplete="given-name"
            variant="standard"
            onChange={handleInputChange}
          />
        </Grid>
        <Grid item xs={12} sm={6}>
          <TextField
            required
            id="lastName"
            name="lastName"
            label="Last name"
            fullWidth
            autoComplete="family-name"
            variant="standard"
            onChange={handleInputChange}
          />
        </Grid>
        <Grid item xs={12}>
          <TextField
            required
            id="area"
            name="area"
            label="Area"
            fullWidth
            autoComplete="shipping area"
            variant="standard"
            onChange={handleInputChange}
          />
        </Grid>

        <Grid item xs={12} sm={6}>
          <TextField
            required
            id="house"
            name="house"
            label="House"
            fullWidth
            autoComplete="shipping house"
            variant="standard"
            onChange={handleInputChange}
          />
        </Grid>
        <Grid item xs={12} sm={6}>
          <TextField
            required
            id="road"
            name="road"
            label="Road"
            fullWidth
            autoComplete="shipping road"
            variant="standard"
            onChange={handleInputChange}
          />
        </Grid>
        <Grid item xs={12} sm={6}>
          <TextField
            required
            id="city"
            name="city"
            label="City"
            fullWidth
            autoComplete="shipping city"
            variant="standard"
            onChange={handleInputChange}
          />
        </Grid>
        <Grid item xs={12} sm={6}>
          <TextField
            required
            id="state"
            name="state"
            label="State"
            fullWidth
            autoComplete="shipping state"
            variant="standard"
            onChange={handleInputChange}
          />
        </Grid>
      </Grid>
      {/* <Typography variant="h6" gutterBottom>
        Shipping Method
      </Typography>
      <Grid item xs={12} sm={6}>
        {/* <ShippingMethod/> */}
        {/* <Stack spacing={1} sx={{ width: 300 }}>
          <Autocomplete
            {...flatProps}
            id="auto-select"
            name="shippingName"
            autoSelect
            onChange={handleInputChange}
            renderInput={(params) => (
              <TextField
                {...params}
                name="shippingId"
                label="Shipping Method"
                variant="standard"
                
              />
            )}
          />
        </Stack>
      </Grid> */} 
      
    </React.Fragment>
  );
}
