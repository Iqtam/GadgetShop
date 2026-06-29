import { BASE_URL } from "../utils/apiURL";

export function fetchLoggedInUserOrders(user) {
  return new Promise(async (resolve) =>{
    console.log("abacd ")
    const response = await fetch(`${BASE_URL}/orders/customer/${user.CUSTOMER_ID}`) 
    const data = await response.json()
    console.log(data);
    console.log("user orders");
    resolve({data})
  }
  );
}


export function fetchLoggedInUser(user) {
  return new Promise(async (resolve) =>{
    console.log("userapi");
    console.log(user);
    if(user?.ROLE=="customer"){
      const response = await fetch(`${BASE_URL}/customer/customer=${user.CUSTOMER_ID}`)
      const data = await response.json()
    resolve({data})
    } 
    else if(user?.ROLE=="supplier"){const response = await fetch(`${BASE_URL}/supplier/supplier=${user.SUPPLIER_ID}`)
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


