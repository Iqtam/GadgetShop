import { createAsyncThunk, createSlice } from "@reduxjs/toolkit";
import { createOrder, fetchAllOrders, updateOrder,fetchShippingMethod } from "./orderAPI";
import { STATUS } from "../utils/status";
const initialState = {
  orders: [
    {
      items: [
        {
          title: "iPhone X",
          description:
            "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
          price: 899,
          discountPercentage: 17.94,
          rating: 4.44,
          stock: 34,
          brand: "Apple",
          category: "smartphones",
          thumbnail: "https://i.dummyjson.com/data/products/2/thumbnail.jpg",
          images: [
            "https://i.dummyjson.com/data/products/2/1.jpg",
            "https://i.dummyjson.com/data/products/2/2.jpg",
            "https://i.dummyjson.com/data/products/2/3.jpg",
            "https://i.dummyjson.com/data/products/2/thumbnail.jpg",
          ],
          quantity: 2,
          user: 1,
          id: 6,
        },
      ],

      totalAmount: 1798,
      totalItems: 2,
      user: {
        email: "test@gmail.com",
        password: "Qwerty123",
        addresses: [
          {
            name: "Abhishek R",
            email: "test@gmail.com",
            phone: "1234567788",
            street: "11th Main",
            city: "Banaglore",
            state: "Karnataka",
            pinCode: "560034",
          },
          {
            name: "Abhishek R",
            email: "test@gmail.com",
            phone: "1234567788",
            street: "11th Main",
            city: "Banaglore",
            state: "Karnataka",
            pinCode: "560034",
          },
        ],
        id: 1,
      },
      paymentMethod: "cash",
      selectedAddress: {
        name: "Abhishek R",
        email: "test@gmail.com",
        phone: "1234567788",
        street: "11th Main",
        city: "Banaglore",
        state: "Karnataka",
        pinCode: "560034",
      },
      status: "dispatched",
      id: 1,
    },
    {
      items: [
        {
          title: "iPhone X",
          description:
            "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
          price: 899,
          discountPercentage: 17.94,
          rating: 4.44,
          stock: 34,
          brand: "Apple",
          category: "smartphones",
          thumbnail: "https://i.dummyjson.com/data/products/2/thumbnail.jpg",
          images: [
            "https://i.dummyjson.com/data/products/2/1.jpg",
            "https://i.dummyjson.com/data/products/2/2.jpg",
            "https://i.dummyjson.com/data/products/2/3.jpg",
            "https://i.dummyjson.com/data/products/2/thumbnail.jpg",
          ],
          quantity: 2,
          user: 1,
          id: 6,
        },
      ],
      totalAmount: 1798,
      totalItems: 2,
      user: {
        email: "test@gmail.com",
        password: "Qwerty123",
        addresses: [
          {
            name: "Abhishek R",
            email: "test@gmail.com",
            phone: "1234567788",
            street: "11th Main",
            city: "Banaglore",
            state: "Karnataka",
            pinCode: "560034",
          },
          {
            name: "Abhishek R",
            email: "test@gmail.com",
            phone: "1234567788",
            street: "11th Main",
            city: "Banaglore",
            state: "Karnataka",
            pinCode: "560034",
          },
        ],
        id: 1,
      },
      paymentMethod: "cash",
      selectedAddress: {
        name: "Abhishek R",
        email: "test@gmail.com",
        phone: "1234567788",
        street: "11th Main",
        city: "Banaglore",
        state: "Karnataka",
        pinCode: "560034",
      },
      status: "delivered",
      id: 2,
    },
  ],
  status: STATUS.IDLE,
  currentOrder: null,
  totalOrders: 0,
  shippingMethods:[],
};
//we may need more info of current order

export const createOrderAsync = createAsyncThunk(
  "order/createOrder",
  async (order) => {
    const response = await createOrder(order);
    // The value we return becomes the `fulfilled` action payload
    return response.data;
  }
);
export const updateOrderAsync = createAsyncThunk(
  "order/updateOrder",
  async (order) => {
    const response = await updateOrder(order);
    // The value we return becomes the `fulfilled` action payload
    return response.data;
  }
);

export const fetchAllOrdersAsync = createAsyncThunk(
  "order/fetchAllOrders",
  async ({ sort, pagination }) => {
    const response = await fetchAllOrders(sort, pagination);
    // The value we return becomes the `fulfilled` action payload
    return response.data;
  }
);
export const fetchShippingMethodAsync = createAsyncThunk(
  "order/fetchShippingMethod",
  async () => {
    const data = await fetchShippingMethod();
    
    return data;
  }
);

export const orderSlice = createSlice({
  name: "order",
  initialState,
  reducers: {
    resetOrder: (state) => {
      state.currentOrder = null;
    },
  },
  extraReducers: (builder) => {
    builder
      .addCase(createOrderAsync.pending, (state) => {
        state.status = STATUS.LOADING;
      })
      .addCase(createOrderAsync.fulfilled, (state, action) => {
        state.status = STATUS.SUCCEEDED;
        state.orders.push(action.payload);
        state.currentOrder = action.payload;
      })
      .addCase(fetchAllOrdersAsync.pending, (state) => {
        state.status = STATUS.LOADING;
      })
      .addCase(fetchAllOrdersAsync.fulfilled, (state, action) => {
        state.status = STATUS.SUCCEEDED;
        state.orders = action.payload.orders;
        state.totalOrders = action.payload.totalOrders;
      })
      .addCase(fetchShippingMethodAsync.pending, (state) => {
        state.status = STATUS.LOADING;
      })
      .addCase(fetchShippingMethodAsync.fulfilled, (state, action) => {
        state.status = STATUS.SUCCEEDED;
        state.shippingMethods=action.payload;
        console.log(action.payload);
        console.log("orderslice");
        console.log(state.shippingMethods);
      })
      .addCase(updateOrderAsync.pending, (state) => {
        state.status = STATUS.LOADING;
      })
      .addCase(updateOrderAsync.fulfilled, (state, action) => {
        state.status = STATUS.SUCCEEDED;
        const index = state.orders.findIndex(
          (order) => order.id === action.payload.id
        );
        state.orders[index] = action.payload;
      });
  },
});

export const { resetOrder } = orderSlice.actions;

export const selectCurrentOrder = (state) => state.order.currentOrder;
export const selectOrders = (state) => state.order.orders;
export const selectTotalOrders = (state) => state.order.totalOrders;
export const selectStatus = (state) => state.order.status;
export const selectShippingMethods=(state)=>state.order.shippingMethods;
export default orderSlice.reducer;
