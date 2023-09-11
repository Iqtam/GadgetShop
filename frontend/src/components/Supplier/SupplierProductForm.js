import { useDispatch, useSelector } from "react-redux";
import {
  clearSelectedProduct,
  createProductAsync,
  fetchAsyncProductSingle,
  selectBrands,
  selectCategories,
  selectProductById,
  updateProductAsync,
  fetchCategoriesAsync,
  deleteProductAsync,
} from "../../store/productSlice";
import { useForm } from "react-hook-form";
import { useParams } from "react-router-dom";
import { useEffect, useState } from "react";
import Modal from "../ProductModal/Modal";
import { selectUserInfo } from "../../store/userSlice";
// import { useAlert } from 'react-alert';

function SupplierProductForm() {
  const {
    register,
    handleSubmit,
    setValue,
    reset,
    formState: { errors },
  } = useForm();
  const selectedBrands = useSelector(selectBrands);
  const brands=selectedBrands;
  const selectedCategories = useSelector(selectCategories);
  const categories=selectedCategories?selectedCategories:null;
  console.log(categories);
  const dispatch = useDispatch();
  const params = useParams();
  const selectedProducts = useSelector(selectProductById);
  const selectedProduct=selectedProducts?selectedProducts[0]:null;
  console.log(selectedProduct);
  const [openModal, setOpenModal] = useState(null);
  //   const alert = useAlert();
const userInfo=useSelector(selectUserInfo);
console.log(userInfo)
  useEffect(() => {
    dispatch(fetchCategoriesAsync());
    if (params.id) {
      dispatch(fetchAsyncProductSingle(params.id));

    } else {
      dispatch(clearSelectedProduct());
    }
  }, [params.id, dispatch]);

  useEffect(() => {
     {
      setValue("TITLLE", selectedProduct?.TITLLE);
      setValue("DESCRIPTION", selectedProduct?.DESCRIPTION);
      setValue("PRICE", selectedProduct?.PRICE);
      setValue('PERCENT_DISCOUNT', selectedProduct?.PERCENT_DISCOUNT);  
      setValue("STOCK", selectedProduct?.STOCK);
      setValue("IMAGE", selectedProduct?.IMAGE);
      setValue("BRAND", selectedProduct?.BRAND);
      setValue("CATEGORY", selectedProduct?.CATEGORY);
      
    }
  }, [ setValue]);

  const handleDelete = () => {
    const product = { ...selectedProduct };
    product.DELETED = true;
    dispatch(deleteProductAsync(product));
  };

  return (
    <>
      <form
        noValidate
        onSubmit={handleSubmit((data) => {
          console.log("product edit data")
          console.log(data);
          const product = { ...data };
          product.IMAGE = [product.IMAGE];

          product.RATING = 0;
          product.SUPPLIER_ID=userInfo[0]?.SUPPLIER_ID;
          delete product["IMAGE"];
          product.PRICE = +product.PRICE;
          product.STOCK = +product.STOCK;
          product.discountPercentage = +product.discountPercentage; 
          console.log(product);
          if (params.id) {
            product.PRODUCT_ID = params.id;
            product.RATING = selectedProduct?.RATING || 0;
            dispatch(updateProductAsync(product));
            // alert.success('Product Updated');

            reset();
          } else {
            dispatch(createProductAsync(product));
            // alert.success('Product Created');
            reset();
          }
        })}
      >
        <div className="space-y-12 bg-white p-12">
          <div className="border-b border-gray-900/10 pb-12">
            <h2 className="text-base font-semibold leading-7 text-gray-900">
              Edit Product
            </h2>

            <div className="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
              {selectedProduct && selectedProduct.deleted && (
                <h2 className="text-red-500 sm:col-span-6">
                  This product is deleted
                </h2>
              )}

              <div className="sm:col-span-6">
                <label
                  htmlFor="TITLLE"
                  className="block text-sm font-medium leading-6 text-gray-900"
                >
                  Product Name
                </label>
                <div className="mt-2">
                  <div className="flex rounded-md shadow-sm ring-1 ring-inset ring-gray-300 focus-within:ring-2 focus-within:ring-inset focus-within:ring-indigo-600 ">
                    <input
                      type="text"
                      {...register("TITLLE", {
                        required: "name is required",
                      })}
                      id="TITLLE"
                      className="block flex-1 border-0 bg-transparent py-1.5 pl-1 text-gray-900 placeholder:text-gray-400 focus:ring-0 sm:text-sm sm:leading-6"
                    />
                  </div>
                </div>
              </div>

              <div className="col-span-full">
                <label
                  htmlFor="DESCRIPTION"
                  className="block text-sm font-medium leading-6 text-gray-900"
                >
                  Description
                </label>
                <div className="mt-2">
                  <textarea
                    id="DESCRIPTION"
                    {...register("DESCRIPTION", {
                      required: "description is required",
                    })}
                    rows={3}
                    className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                    defaultValue={""}
                  />
                </div>
                <p className="mt-3 text-sm leading-6 text-gray-600">
                  Write a few sentences about product.
                </p>
              </div>

              <div className="col-span-full">
                <label
                  htmlFor="BRAND"
                  className="block text-sm font-medium leading-6 text-gray-900"
                >
                  Brand
                </label>
                <div className="mt-2">
                  <select
                    {...register("BRAND", {
                      required: "brand is required",
                    })}
                  >
                      <option value={selectedProduct?.BRAND}>{selectedProduct?.BRAND}</option>
                     {brands.map((brand) => (
                      <option key={brand.value} value={brand.value}>
                        {brand.label}
                      </option>
                    ))} 
                  </select>
                </div>
              </div>

              <div className="col-span-full">
                <label
                  htmlFor="CATEGORY"
                  className="block text-sm font-medium leading-6 text-gray-900"
                >
                  Category
                </label>
                <div className="mt-2">
                  <select
                    {...register("category", {
                      required: "category is required",
                    })}
                  >
                    <option value="">{selectedProduct?.CATEGORY_NAME}</option>
                    {categories.map((category) => (
                      <option key={category.CATEGORY_ID} value={category.CATEGORY_NAME}>
                        {category.CATEGORY_NAME}
                      </option>
                    ))}
                  </select>
                </div>
              </div>

              <div className="sm:col-span-2">
                <label
                  htmlFor="PRICE"
                  className="block text-sm font-medium leading-6 text-gray-900"
                >
                  Price
                </label>
                <div className="mt-2">
                  <div className="flex rounded-md shadow-sm ring-1 ring-inset ring-gray-300 focus-within:ring-2 focus-within:ring-inset focus-within:ring-indigo-600 ">
                    <input
                      type="number"
                      {...register("PRICE", {
                        required: "price is required",
                        min: 1,
                      })}
                      id="PRICE"
                      className="block flex-1 border-0 bg-transparent py-1.5 pl-1 text-gray-900 placeholder:text-gray-400 focus:ring-0 sm:text-sm sm:leading-6"
                    />
                  </div>
                </div>
              </div>

              {/* <div className="sm:col-span-2">   /// Tamim 
                <label
                  htmlFor="discountPercentage"
                  className="block text-sm font-medium leading-6 text-gray-900"
                >
                  Discount Percentage
                </label>
                <div className="mt-2">
                  <div className="flex rounded-md shadow-sm ring-1 ring-inset ring-gray-300 focus-within:ring-2 focus-within:ring-inset focus-within:ring-indigo-600 ">
                    <input
                      type="number"
                      {...register("discountPercentage", {
                        required: "discountPercentage is required",
                        min: 0,
                        max: 100,
                      })}
                      id="discountPercentage"
                      className="block flex-1 border-0 bg-transparent py-1.5 pl-1 text-gray-900 placeholder:text-gray-400 focus:ring-0 sm:text-sm sm:leading-6"
                    />
                  </div>
                </div>
              </div> */}

              <div className="sm:col-span-2">
                <label
                  htmlFor="STOCK"
                  className="block text-sm font-medium leading-6 text-gray-900"
                >
                  Stock
                </label>
                <div className="mt-2">
                  <div className="flex rounded-md shadow-sm ring-1 ring-inset ring-gray-300 focus-within:ring-2 focus-within:ring-inset focus-within:ring-indigo-600 ">
                    <input
                      type="number"
                      {...register("STOCK", {
                        required: "stock is required",
                        min: 0,
                      })}
                      id="STOCK"
                      className="block flex-1 border-0 bg-transparent py-1.5 pl-1 text-gray-900 placeholder:text-gray-400 focus:ring-0 sm:text-sm sm:leading-6"
                    />
                  </div>
                </div>
              </div>

              <div className="sm:col-span-6">
                <label
                  htmlFor="IMAGE"
                  className="block text-sm font-medium leading-6 text-gray-900"
                >
                  Image 1
                </label>
                <div className="mt-2">
                  <div className="flex rounded-md shadow-sm ring-1 ring-inset ring-gray-300 focus-within:ring-2 focus-within:ring-inset focus-within:ring-indigo-600 ">
                    <input
                      type="text"
                      {...register("IMAGE", {
                        required: "image1 is required",
                      })}
                      id="IMAGE"
                      className="block flex-1 border-0 bg-transparent py-1.5 pl-1 text-gray-900 placeholder:text-gray-400 focus:ring-0 sm:text-sm sm:leading-6"
                    />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div className="mt-6 flex items-center justify-end gap-x-6">
          {/* <button
            type="button"
            className="text-sm font-semibold leading-6 text-gray-900 bg-sky-500/50"
          >
            Cancel
          </button> */}

          {selectedProduct && !selectedProduct.deleted && (
            <button
              onClick={(e) => {
                e.preventDefault();
                setOpenModal(true);
              }}
              className="rounded-md bg-red-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-red-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
            >
              Delete Product 
            </button>
          )}

          <button
            type="submit"
            className="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
          >
            Save
          </button>
        </div>
      </form>
      {selectedProduct && (
        <Modal
          title={`Delete ${selectedProduct.TITLLE}`}
          message="Are you sure you want to delete this Product ?"
          dangerOption="Delete"
          cancelOption="Cancel"
          dangerAction={handleDelete}
          cancelAction={() => setOpenModal(null)}
          showModal={openModal}
        ></Modal>
      )}
    </>
  );
}

export default SupplierProductForm;
