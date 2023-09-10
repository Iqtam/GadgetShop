import React, { useEffect } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import {
  fetchLoggedInUserOrderAsync,
  selectUserInfo,
  selectUserInfoStatus,
  selectUserOrders,
} from '../../store/userSlice';
import { Link } from 'react-router-dom';
import { formatPrice } from '../../utils/helpers';
export default function UserOrders() {
  const dispatch = useDispatch();
  const orders = useSelector(selectUserOrders);
  const status = useSelector(selectUserInfoStatus);
  const userInfo=useSelector(selectUserInfo);
  console.log(userInfo)
  useEffect(() => {
    dispatch(fetchLoggedInUserOrderAsync(userInfo));
  }, [dispatch]);
  
  return (
    <div className='min-h-screen'>
      
      {orders && orders.map((order) => (
        <div key={order?.ORDER_ID}>
          <div>
            <div className="mx-auto mt-12 bg-white max-w-7xl px-4 sm:px-6 lg:px-8">
              <div className="border-t border-gray-200 px-4 py-6 sm:px-6">
                <h1 className="text-4xl my-5 font-bold tracking-tight text-gray-900">
                  Order # {order?.ORDER_ID}
                </h1>
                <h3 className="text-xl my-5 font-bold tracking-tight text-red-900">
                  Order Status : {order?.STATUS}
                </h3>
                <div className="flow-root">
                  <ul className="-my-6 divide-y divide-gray-200">
                    {order.items.map((item) => (
                      <li key={item.PRODUCT_ID} className="flex py-6">
                        <div className="h-24 w-24 flex-shrink-0 overflow-hidden rounded-md border border-gray-200">
                          <img
                            src={item.IMAGE}
                            alt={item.TITLLE}
                            className="h-full w-full object-cover object-center"
                          />
                        </div>

                        <div className="ml-4 flex flex-1 flex-col">
                          <div>
                            <div className="flex justify-between text-base font-medium text-gray-900">
                              <h3>
                                <Link to={`/product/${item.PRODUCT_ID}`}>{item.TITLLE}</Link>
                              </h3>
                              
                            </div>
                            <p className="mt-1 text-sm text-gray-500">
                              {item.BRAND}
                            </p>
                          </div>
                          <div className="flex flex-1 items-end justify-between text-sm">
                            <div className="text-gray-500">
                              <label
                                htmlFor="quantity"
                                className="inline mr-5 text-sm font-medium leading-6 text-gray-900"
                              >
                                Qty :{item.QUANTITY}
                              </label>
                              <label
                                htmlFor="quantity"
                                className="inline mr-5 text-sm font-medium leading-6 text-gray-900"
                              >
                                Total Price :{formatPrice(item.TOTAL_PRICE)}
                              </label>
                            </div>

                            <div className="flex"></div>
                          </div>
                        </div>
                      </li>
                    ))}
                  </ul>
                </div>
              </div>

              <div className="border-t border-gray-200 px-4 py-6 sm:px-6">
                <div className="flex justify-between my-2 text-base font-medium text-gray-900">
                  <p>Subtotal</p>
                  <p> {formatPrice(order.TOTAL_AMOUNT)}</p>
                </div>
                <div className="flex justify-between my-2 text-base font-medium text-gray-900">
                  <p>Total Items in Cart</p>
                  <p>{order.TOTAL_ITEMS} items</p>
                </div>
                <p className="mt-0.5 text-sm text-gray-500">
                  Shipping Address :
                </p>
                <div className="flex justify-between gap-x-6 px-5 py-5 border-solid border-2 border-gray-200">
                  <div className="flex gap-x-4">
                    <div className="min-w-0 flex-auto">
                      <p className="text-sm font-semibold leading-6 text-gray-900">
                        House no:{order.address.HOUSE},Road No:{order.address.ROAD},Area:{order.address.AREA}
                      </p>
                      <p className="mt-1 truncate text-xs leading-5 text-gray-500">
                        CITY:{order.address.CITY},STATE:{order.address.STATE}
                      </p>
              
                    </div>
                  </div>
                  <div className="hidden sm:flex sm:flex-col sm:items-end">
                    
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      ))}
       
    </div>
  );
}
