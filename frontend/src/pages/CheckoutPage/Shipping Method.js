import * as React from 'react';
import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';
import Stack from '@mui/material/Stack';
import { fetchShippingMethodAsync,selectShippingMethods } from '../../store/orderSlice';
import { useSelector,useDispatch } from 'react-redux';


export default function ShippingMethod() {
    console.log("tamim");
    const shippingMethods=useSelector(selectShippingMethods);
    console.log(shippingMethods);
    const dispatch=useDispatch();
    React.useEffect(() => {
        
        dispatch(fetchShippingMethodAsync());
        console.log(shippingMethods);
      }, []);
//     const defaultProps = {
//     options: shippingMethods.SHIPPING_NAME,
//     getOptionLabel: (option) => option.title,
//   };
  const flatProps = {
    options: shippingMethods.map((option) => option.SHIPPING_NAME+" Charge :"+ option.CHARGE),
  };
  
  const [shippingMethod, setShippingMethod] = React.useState({
     SHIPPING_NAME:'',
     CHARGE:'',
  });

  return (
    <Stack spacing={1} sx={{ width: 300 }}>
      
      <Autocomplete
        {...flatProps}
        id="auto-select"
        autoSelect
        renderInput={(params) => (
          <TextField {...params} label="Shipping Method" variant="standard" />
        )}
      />
    </Stack>
  );
}

