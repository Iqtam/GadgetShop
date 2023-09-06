import { createAsyncThunk, createSlice } from '@reduxjs/toolkit';
import {
  loginUser,
  createUser,
  signOut,
  checkAuth,
} from './authenticationAPI';
import { STATUS } from "../utils/status";

const initialState = {
  loggedInUserToken: null, // this should only contain user identity => 'id'/'role'
  userStatus: STATUS.IDLE,
  error: null,
  userChecked: false,
};

export const createUserAsync = createAsyncThunk(
  'user/createUser',
  async (userData) => {
    console.log(userData);
    const response = await createUser(userData);
    // The value we return becomes the `fulfilled` action payload
    return response.data;
  }
);

export const loginUserAsync = createAsyncThunk(
  'user/loginUser',
  async (loginInfo, { rejectWithValue }) => {
    try {
      const response = await loginUser(loginInfo);
      return response.data;
    } catch (error) {
      console.log(error);
      console.log(rejectWithValue(error));
      return rejectWithValue(error);
    }
  }
);

export const checkAuthAsync = createAsyncThunk('user/checkAuth', async () => {
  try {
    const response = await checkAuth();
    return response.data;
  } catch (error) {
    console.log(error);
  }
});


export const signOutAsync = createAsyncThunk(
  'user/signOut',
  async () => {
    const response = await signOut();
    // The value we return becomes the `fulfilled` action payload
    return response.data;
  }
);

export const authenticationSlice = createSlice({
  name: 'authentication',
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder
      .addCase(createUserAsync.pending, (state) => {
        state.userStatus = STATUS.LOADING;
      })
      .addCase(createUserAsync.fulfilled, (state, action) => {
        state.userStatus = STATUS.SUCCEEDED;
        state.loggedInUserToken = action.payload;
      })
      .addCase(createUserAsync.rejected, (state, action) => {
        state.userStatus = STATUS.FAILED;
        
      })
      .addCase(loginUserAsync.pending, (state) => {
        state.userStatus = STATUS.LOADING;;
      })
      .addCase(loginUserAsync.fulfilled, (state, action) => {
        state.userStatus = STATUS.SUCCEEDED;
        state.loggedInUserToken = action.payload;
      })
      .addCase(loginUserAsync.rejected, (state, action) => {
        state.userStatus = STATUS.FAILED;
        state.error = action.payload;
    
      })
      .addCase(signOutAsync.pending, (state) => {
        state.userStatus = STATUS.LOADING;;
      })
      .addCase(signOutAsync.fulfilled, (state, action) => {
        state.userStatus = STATUS.SUCCEEDED;
        state.loggedInUserToken = null;
      })
      .addCase(signOutAsync.rejected, (state, action) => {
        state.userStatus =  STATUS.FAILED;
        
      })
      .addCase(checkAuthAsync.pending, (state) => {
        state.userStatus = STATUS.LOADING;;
      })
      .addCase(checkAuthAsync.fulfilled, (state, action) => {
        state.userStatus = STATUS.SUCCEEDED;
        state.loggedInUserToken = action.payload;
        state.userChecked = true;
      })
      .addCase(checkAuthAsync.rejected, (state, action) => {
        state.userStatus = STATUS.FAILED;
        state.userChecked = true;
        
      })
      
  },
});

export const selectLoggedInUser = (state) => state.authentication.loggedInUserToken;
export const selectError = (state) => state.authentication.error;
export const selectUserChecked = (state) => state.authentication.userChecked;

export default authenticationSlice.reducer;
