import * as React from "react";
import Box from "@mui/material/Box";
import Rating from "@mui/material/Rating";
import Typography from "@mui/material/Typography";
import { fetchProductRiviewsAsync,getProductRiviews } from "../../store/productSlice";
import { useSelector, useDispatch } from "react-redux";

import "./ProductSinglePage.scss";

export default function ProductRiviews(props) {
    const dispatch = useDispatch();
    const riviews=useSelector(getProductRiviews);
    React.useEffect(() => {
        dispatch(fetchProductRiviewsAsync(props.id));
        console.log("riviews :");
        console.log(riviews);
      }, []);

  return (
    <>
      {
        
        riviews.map(riview => (
            <div>
                {riview.RATING}
            <Typography component="legend">Rating:<Rating name="read-only" value={riview?.RATINGS} readOnly /></Typography>
            <Typography component="legend">Comment:{riview?.COMMENTS}</Typography>
            <Typography component="legend">Comment By:{riview?.CUSTOMER_NAME}</Typography>
            </div>

          
        ))
        
      }
      
      
    </>
    
  );
}
