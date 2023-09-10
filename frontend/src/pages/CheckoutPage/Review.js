import * as React from 'react';
import Typography from '@mui/material/Typography';
import List from '@mui/material/List';
import ListItem from '@mui/material/ListItem';
import ListItemText from '@mui/material/ListItemText';
import Grid from '@mui/material/Grid';
import { useSelector,useDispatch } from 'react-redux';
import {
  getAllCarts,
  getCartTotal,
} from "../../store/cartSlice";

  import { formatPrice } from '../../utils/helpers';
const products = [
  {
    name: 'Product 1',
    desc: 'A nice thing',
    price: '$9.99',
  },
  {
    name: 'Product 2',
    desc: 'Another thing',
    price: '$3.45',
  },
  {
    name: 'Product 3',
    desc: 'Something else',
    price: '$6.51',
  },
  {
    name: 'Product 4',
    desc: 'Best thing of all',
    price: '$14.11',
  },
  { name: 'Shipping', desc: '', price: 'Free' },
];

const addresses = ['1 MUI Drive', 'Reactville', 'Anytown', '99999', 'USA'];
const payments = [
  { name: 'Card type', detail: 'Visa' },
  { name: 'Card holder', detail: 'Mr John Smith' },
  { name: 'Card number', detail: 'xxxx-xxxx-xxxx-1234' },
  { name: 'Expiry date', detail: '04/2024' },
];

export default function Review({paymentData,addressData}) {
  const dispatch = useDispatch();
  const carts = useSelector(getAllCarts);
  const { itemsCount, totalAmount } = useSelector((state) => state.cart);
  return (
    <React.Fragment>
      <Typography variant="h6" gutterBottom>
        Order summary
      </Typography>
      <List disablePadding>
        {carts.map((product) => (
          <ListItem key={product.PRODUCT_ID} sx={{ py: 1, px: 0 }}>
            <ListItemText primary={product.TITLLE} secondary={'Quantity:'+product.quantity} />
            <Typography variant="body2">{formatPrice(product?.totalPrice)}</Typography>
          </ListItem>
        ))}
        <ListItem sx={{ py: 1, px: 0 }}>
          <ListItemText primary="Total" />
          <Typography variant="subtitle1" sx={{ fontWeight: 700 }}>
          {formatPrice(totalAmount)}
          </Typography>
        </ListItem>
      </List>
      <Grid container spacing={2}>
        <Grid item xs={12} sm={6}>
          <Typography variant="h6" gutterBottom sx={{ mt: 2 }}>
            Shipping Address
          </Typography>
          <Typography gutterBottom>{addressData.firstName+" "+addressData.lastName }</Typography>
          <Typography gutterBottom>House:{addressData.house},Road:{addressData.road},Area:{addressData.area}</Typography>
          <Typography gutterBottom>City:{addressData.city},State:{addressData.state}</Typography>
        </Grid>
        <Grid item container direction="column" xs={12} sm={6}>
          <Typography variant="h6" gutterBottom sx={{ mt: 2 }}>
            Payment details
          </Typography>
          <Grid container>
            
              <React.Fragment key={paymentData.paymentMethod}>
                <Grid item xs={6}>
                  <Typography gutterBottom>{paymentData.paymentMethod}</Typography>
                </Grid>
                
              </React.Fragment>
            
          </Grid>
        </Grid>
      </Grid>
    </React.Fragment>
  );
}
