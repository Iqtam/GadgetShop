import { BASE_URL } from "../utils/apiURL";
export function createOrder(order) {
    return new Promise(async (resolve) => {
      const response = await fetch(`${BASE_URL}/orders/create-order`, {
        method: 'POST',
        body: JSON.stringify(order),
        headers: { 'content-type': 'application/json' },
      });
      const data = await response.json();
      resolve({ data });
    });
  }
  
  export function updateOrder(order) {
    return new Promise(async (resolve) => {
      const response = await fetch('/orders/'+order.id, {
        method: 'PATCH',
        body: JSON.stringify(order),
        headers: { 'content-type': 'application/json' },
      });
      const data = await response.json();
      resolve({ data });
    });
  }
  
  export function fetchAllOrders(sort, pagination) {
   let queryString = '';
  
   for (let key in sort) {
    queryString += `${key}=${sort[key]}&`;
  }
    for (let key in pagination) {
      queryString += `${key}=${pagination[key]}&`;
    }
  
    return new Promise(async (resolve) => {
      const response = await fetch(
        '/orders?' + queryString
      );
      const data = await response.json();
      const totalOrders = await response.headers.get('X-Total-Count');
      resolve({ data: { orders: data, totalOrders: +totalOrders } });
    });
  }
  
  export function fetchShippingMethod() {
    
     return new Promise(async (resolve) => {
       const response = await fetch(
         `${BASE_URL}/orders/shipping-method`
       );
       const data = await response.json();
       console.log(data)
       resolve(data);
     });
   }