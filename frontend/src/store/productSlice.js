import { createAsyncThunk, createSlice } from "@reduxjs/toolkit";
import { BASE_URL } from "../utils/apiURL";
import { STATUS } from "../utils/status";
import {
  fetchBrands,
  fetchCategories,
  fetchProductsByFilters,
  fetchProductRiviews,
  updateProduct,
  createProduct,
  deleteProduct,
} from "./productAPI";
const initialState = {
  products: [],
  brands: [],
  categories: [],
  riviews: [],
  similarProducts:[],
  similarProductsStatus:STATUS.IDLE,
  totalItems: 0,
  selectedProduct: null,
  productsStatus: STATUS.IDLE,
  productSingle: [],
  productSingleStatus: STATUS.IDLE,

};

const productSlice = createSlice({
  name: "product",
  initialState,
  reducers: {
    clearSelectedProduct: (state) => {
      state.selectedProduct = null;
    },
  },
  extraReducers: (builder) => {
    builder
      .addCase(fetchAsyncProducts.pending, (state, action) => {
        state.productsStatus = STATUS.LOADING;
      })

      .addCase(fetchAsyncProducts.fulfilled, (state, action) => {
        state.products = action.payload;
        state.productsStatus = STATUS.SUCCEEDED;
      })

      .addCase(fetchAsyncProducts.rejected, (state, action) => {
        state.productsStatus = STATUS.FAILED;
      })
      .addCase(fetchSimilarProductsAsync.pending, (state, action) => {
        state.similarProductsStatus = STATUS.LOADING;
      })

      .addCase(fetchSimilarProductsAsync.fulfilled, (state, action) => {
        state.similarProducts = action.payload;
        state.similarProductsStatus = STATUS.SUCCEEDED;
      })

      .addCase(fetchSimilarProductsAsync.rejected, (state, action) => {
        state.similarProductsStatus = STATUS.FAILED;
      })
      

      .addCase(fetchAsyncProductSingle.pending, (state, action) => {
        state.productSingleStatus = STATUS.LOADING;
      })

      .addCase(fetchAsyncProductSingle.fulfilled, (state, action) => {
        state.productSingle = action.payload;

        state.productSingleStatus = STATUS.SUCCEEDED;
        state.selectedProduct = action.payload;
      })

      .addCase(fetchAsyncProductSingle.rejected, (state, action) => {
        state.productSingleStatus = STATUS.FAILED;
      })
      .addCase(fetchAsyncProductsOfSupplier.pending, (state, action) => {
        state.productsStatus = STATUS.LOADING;
      })

      .addCase(fetchAsyncProductsOfSupplier.fulfilled, (state, action) => {
        state.products = action.payload;
        state.productsStatus = STATUS.SUCCEEDED;
      })

      .addCase(fetchAsyncProductsOfSupplier.rejected, (state, action) => {
        state.productsStatus = STATUS.FAILED;
      })
      .addCase(fetchProductsByFiltersAsync.pending, (state) => {
        state.productsStatus = STATUS.LOADING;
      })
      .addCase(fetchProductsByFiltersAsync.fulfilled, (state, action) => {
        state.productsStatus = STATUS.SUCCEEDED;
        state.products = action.payload;
        state.totalItems = action.payload.totalItems;
      })
      .addCase(fetchBrandsAsync.pending, (state) => {
        state.productsStatus = STATUS.LOADING;
      })
      .addCase(fetchBrandsAsync.fulfilled, (state, action) => {
        state.productsStatus = STATUS.SUCCEEDED;
        state.brands = action.payload;
      })
      .addCase(fetchCategoriesAsync.pending, (state) => {
        state.productsStatus = STATUS.LOADING;
      })
      .addCase(fetchCategoriesAsync.fulfilled, (state, action) => {
        state.productsStatus = STATUS.SUCCEEDED;
        state.categories = action.payload;
      })
      .addCase(createProductAsync.pending, (state) => {
        state.productsStatus = STATUS.LOADING;
      })
      .addCase(createProductAsync.fulfilled, (state, action) => {
        state.productsStatus = STATUS.IDLE;
        state.products.push(action.payload);
      })
      .addCase(updateProductAsync.pending, (state) => {
        state.productsStatus = STATUS.LOADING;
      })
      .addCase(updateProductAsync.fulfilled, (state, action) => {
        state.productsStatus = STATUS.IDLE;
        const index = state.products.findIndex(
          (product) => product.PRODUCT_ID === action.payload.PRODUCT_ID
        );
        state.products[index] = action.payload;
        state.selectedProduct = action.payload;
      })
      .addCase(fetchProductRiviewsAsync.pending, (state) => {
        state.productsStatus = STATUS.LOADING;
      })
      .addCase(fetchProductRiviewsAsync.fulfilled, (state, action) => {
        state.productsStatus = STATUS.SUCCEEDED;
        state.riviews = action.payload;
      });
  },
});

// for getting the products list with limited numbers
export const fetchAsyncProducts = createAsyncThunk(
  "products/fetch",
  async (limit) => {
    const response = await fetch(`${BASE_URL}/products/limit=${limit}`);
    const data = await response.json();
    return data;
  }
);

export const fetchSimilarProductsAsync = createAsyncThunk(
  "similar-products/fetch",
  async (parameters) => {
    const response = await fetch(`${BASE_URL}/products/similar-products/product-id=${parameters.product_id}/category-id=${parameters.category_id}/limit=${parameters.limit}`);
    const data = await response.json();
    return data;
  }
);
export const fetchAsyncProductsOfSupplier = createAsyncThunk(
  "products-of-supplier/fetch",
  async (supplierId) => {
    const response = await fetch(
      `${BASE_URL}/products/supplierId=${supplierId}`
    );
    const data = await response.json();
    return data;
  }
);

// getting the single product data also
export const fetchAsyncProductSingle = createAsyncThunk(
  "product-single/fetch",
  async (id) => {
    const response = await fetch(`${BASE_URL}/products/${id}`);
    const data = await response.json();
    return data;
  }
);

export const fetchProductsByFiltersAsync = createAsyncThunk(
  "product/fetchProductsByFilters",
  async ({ filter, sort, pagination, admin }) => {
    const response = await fetchProductsByFilters(
      filter,
      sort,
      pagination,
      admin
    );
    // The value we return becomes the `fulfilled` action payload
    return response.data;
  }
);

export const fetchBrandsAsync = createAsyncThunk(
  "product/fetchBrands",
  async () => {
    const response = await fetchBrands();
    // The value we return becomes the `fulfilled` action payload
    return response.data;
  }
);
export const fetchCategoriesAsync = createAsyncThunk(
  "product/fetchCategories",
  async () => {
    const response = await fetchCategories();
    // The value we return becomes the `fulfilled` action payload
    return response.data;
  }
);

export const createProductAsync = createAsyncThunk(
  "product/create",
  async (product) => {
    const response = await createProduct(product);
    return response.data;
  }
);
export const deleteProductAsync = createAsyncThunk(
  "product/create",
  async (product) => {
    const response = await deleteProduct(product);
    return response.data;
  }
);

export const updateProductAsync = createAsyncThunk(
  "product/update",
  async (update) => {
    const response = await updateProduct(update);
    return response.data;
  }
);
export const fetchProductRiviewsAsync = createAsyncThunk(
  "product/riviews",
  async (id) => {
    const response = await fetchProductRiviews(id);
    return response.data;
  }
);

export const { clearSelectedProduct } = productSlice.actions;
export const selectTotalItems = (state) => state.product.totalItems;
export const selectBrands = (state) => state.product.brands;
export const selectCategories = (state) => state.product.categories;
export const selectProductById = (state) => state.product.selectedProduct;
export const getAllProducts = (state) => state.product.products;
export const getAllProductsStatus = (state) => state.product.productsStatus;
export const getProductSingle = (state) => state.product.productSingle;
export const getSimilarProducts=(state)=>state.product.similarProducts;
export const getSimilarProductsStatus=(state)=>state.product.similarProductsStatus;
export const getSingleProductStatus = (state) =>
  state.product.productSingleStatus;
export const getProductRiviews = (state) => state.product.riviews;
export default productSlice.reducer;
