import { createAsyncThunk, createSlice } from "@reduxjs/toolkit";
import {
  fetchLoggedInUserOrders,
  updateUser,
  fetchLoggedInUser,
} from "./userAPI";
///TAMIM
const initialState = {
  status: "idle",
  userInfo: {
    LAST_NAME:"Tamim ",
    email: "test@gmail.com",
    password: "Qwerty123",
    role: "customer",
    addresses: [
      {
        name: "Abhishek Rathore",
        email: "test@gmail.com",
        phone: "1234567788",
        street: "11th Main",
        city: "Banaglore",
        state: "Karnataka",
        pinCode: "560034",
      },
      {
        name: "Jack Morris",
        email: "jack@gmail.com",
        city: "Delhi",
        state: "Delhi",
        pinCode: "110006",
        phone: "12312331232",
        street: "12th cross",
      },
    ],
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
    ],
    id: 1,
  }, // this info will be used in case of detailed user info, while auth will
  // only be used for loggedInUser id etc checks
};

export const fetchLoggedInUserOrderAsync = createAsyncThunk(
  "user/fetchLoggedInUserOrders",
  async () => {
    const response = await fetchLoggedInUserOrders();
    // The value we return becomes the `fulfilled` action payload
    return response.data;
  }
);

export const fetchLoggedInUserAsync = createAsyncThunk(
  "user/fetchLoggedInUser",
  async (user) => {
    const response = await fetchLoggedInUser(user);
    // The value we return becomes the `fulfilled` action payload
    return response.data;
  }
);

export const updateUserAsync = createAsyncThunk(
  "user/updateUser",
  async (update) => {
    // this is name mistake
    const response = await updateUser(update);
    // The value we return becomes the `fulfilled` action payload
    return response.data;
  }
);

export const userSlice = createSlice({
  name: "user",
  initialState,
  reducers: {
    resetUserInfo: (state) => {
      state.userInfo = null;
    },
  },
  extraReducers: (builder) => {
    builder
      .addCase(fetchLoggedInUserOrderAsync.pending, (state) => {
        state.status = "loading";
      })
      .addCase(fetchLoggedInUserOrderAsync.fulfilled, (state, action) => {
        state.status = "idle";
        state.userInfo.orders = action.payload;
      })
      .addCase(updateUserAsync.pending, (state) => {
        state.status = "loading";
      })
      .addCase(updateUserAsync.fulfilled, (state, action) => {
        state.status = "idle";
        // earlier there was loggedInUser variable in other slice
        state.userInfo = action.payload;
      })
      .addCase(fetchLoggedInUserAsync.pending, (state) => {
        state.status = "loading";
      })
      .addCase(fetchLoggedInUserAsync.fulfilled, (state, action) => {
        state.status = "idle";
        // this info can be different or more from logged-in User info
        state.userInfo = action.payload;
      });
  },
});
export const {resetUserInfo}=userSlice.actions;
export const selectUserOrders = (state) => state.user.userInfo.orders;
export const selectUserInfo = (state) => state.user.userInfo;
export const selectUserInfoStatus = (state) => state.user.status;

// export const { increment } = userSlice.actions;

export default userSlice.reducer;
