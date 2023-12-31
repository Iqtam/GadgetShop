import {configureStore} from "@reduxjs/toolkit";
import sidebarReducer from "./sidebarSlice";
import categoryReducer from "./categorySlice";
import productReducer from "./productSlice";
import cartReducer from "./cartSlice";
import searchReducer from "./searchSlice";
import authenticationReducer from "./authenticationSlice";
import userReducer from "./userSlice";
import orderReducer from "./orderSlice";
const store = configureStore({
    reducer: {
        sidebar: sidebarReducer,
        category: categoryReducer,
        product: productReducer,
        cart: cartReducer,
        search: searchReducer,
        authentication:authenticationReducer,
        user:userReducer,
        order:orderReducer,
    }
});

export default store;