import * as React from "react";
import Typography from '@mui/material/Typography';

import TextField from "@mui/material/TextField";
import Autocomplete from "@mui/material/Autocomplete";
import Stack from "@mui/material/Stack";
import Grid from '@mui/material/Grid';

import FormControlLabel from '@mui/material/FormControlLabel';
import Checkbox from '@mui/material/Checkbox';

export default function PaymentMethod({onUpdatePayment}) {
    const handleInputChange = (event,newValue) => {
        if (newValue) {
            onUpdatePayment({ paymentMethod: newValue.title });
          } else {
            onUpdatePayment({ paymentMethod: '' });
          }
      };
    const defaultProps = {
    options: paymentMethod,
    getOptionLabel: (option) => option.title,
  };
  const flatProps = {
    options: paymentMethod.map((option) => option.title),
  };
  const [Method, setMethod] = React.useState(null);
const handleChange=(event,newValue)=>{
    setMethod(newValue);
    handleInputChange(event);
}
  return (
    <React.Fragment>
      <Typography variant="h6" gutterBottom>
        Payment method
      </Typography>
      <Grid container spacing={3}>
        <Grid item xs={12} md={6}>
          <Stack spacing={1} sx={{ width: 300 }}>
            <Autocomplete
              {...defaultProps}
              id="auto-select"
              
              autoSelect
              
              onChange={handleInputChange}
              renderInput={(params) => (
                <TextField
                  {...params}
                  label="Payment Method"
                  variant="standard"
                />
              )}
            />
          </Stack>
        </Grid>
      </Grid>
    </React.Fragment>
  );
}

const paymentMethod = [
  { title: "Bkash" },
  { title: "Rocket" },
  { title: "Nagad" },
  { title: "Cash On Delivery" },
  { title: "Sonali Bank" },
  { title: "Dutch Bangla Bank" },
];
