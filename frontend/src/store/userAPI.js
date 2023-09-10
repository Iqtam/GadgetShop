import { BASE_URL } from "../utils/apiURL";

export function fetchLoggedInUserOrders() {
  return new Promise(async (resolve) =>{
    const response = await fetch('/orders/own/') 
    const data = await response.json()
    resolve({data})
  }
  );
}


export function fetchLoggedInUser(user) {
  return new Promise(async (resolve) =>{
    
    if(user.role=="customer"){
      const response = await fetch(`${BASE_URL}/customer/${user.CUSTOMER_ID}`)
      const data = await response.json()
    resolve({data})
    } 
    else if(user.role=="supplier"){const response = await fetch(`${BASE_URL}/supplier/${user.SUPPLIER_ID}`)
    const data = await response.json()
    resolve({data})}
  }
  );
}

export function updateUser(update) {
  return new Promise(async (resolve) => {
    const response = await fetch('/users/'+update.id, {
      method: 'PATCH',
      body: JSON.stringify(update),
      headers: { 'content-type': 'application/json' },
    });
    const data = await response.json();
    resolve({ data });
  });
}


