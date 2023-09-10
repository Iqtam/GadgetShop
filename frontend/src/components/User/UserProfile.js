import React, { useEffect, useState } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import { fetchLoggedInUserAsync, selectUserInfo, updateUserAsync } from '../../store/userSlice';
import { useForm } from 'react-hook-form';
import { selectLoggedInUser } from '../../store/authenticationSlice';

export default function UserProfile() {
  const dispatch = useDispatch();
  // const userInfo = useSelector(selectUserInfo);
  // const user=useSelector(selectLoggedInUser);
  const [selectedEditIndex, setSelectedEditIndex] = useState(-1);
  const [showAddAddressForm, setShowAddAddressForm] = useState(false);
  // useEffect(() => {
  //   dispatch(fetchLoggedInUserAsync())
  // }, []);
  
  const userInfo = useSelector(selectUserInfo);
  let index;
  if(userInfo?.role=='customer'){
     index=userInfo?.CUSTOMER_ID;
  }
  else if (userInfo?.role=='supplier'){
     index=userInfo?.SUPPLIER_ID;
  }
  console.log(userInfo);
  const {
    register,
    handleSubmit,
    reset,
    setValue,
    formState: { errors },
  } = useForm();

  const handleEdit = (updatedData, index) => {
    // const newUser = { ...userInfo, addresses: [...userInfo.addresses] }; // for shallow copy issue
    // newUser.addresses.splice(index, 1, addressUpdate);
    
    // dispatch(updateUserAsync(newUser));
    // userInfo={...updatedData};
    console.log("handle edit")
    console.log(updatedData);
    updatedData.CUSTOMER_ID=userInfo?.CUSTOMER_ID;
     dispatch(updateUserAsync(updatedData));
    setSelectedEditIndex(-1);
  };

  const handleEditForm = (index) => {
    setSelectedEditIndex(index);
    
    setValue('FIRST_NAME', userInfo?.FIRST_NAME);setValue('LAST_NAME', userInfo?.LAST_NAME);
    setValue('EMAIL', userInfo?.EMAIL);
    setValue('CITY', userInfo?.CITY);
    setValue('STATE', userInfo?.STATE);
    
    setValue('CONTACTN0S', userInfo?.CONTACTN0S);
    setValue('HOUSE', userInfo?.HOUSE);
    setValue('ROAD', userInfo?.ROAD);
    setValue('PASSWORD', userInfo?.PASSWORD);
    setValue('DATE_OF_BIRTH', userInfo?.DATE_OF_BIRTH);
  };


  
  return (
    <div>
      <div className="mx-auto mt-12 bg-white max-w-7xl px-4 sm:px-6 lg:px-8">
        <div className="border-t border-gray-200 px-4 py-6 sm:px-6">
          <h1 className="text-4xl my-5 font-bold tracking-tight text-gray-900">
            Name: {userInfo?.FIRST_NAME ? userInfo?.FIRST_NAME +userInfo?.LAST_NAME : userInfo?.LAST_NAME}
          </h1>
          <h3 className="text-xl my-5 font-bold tracking-tight text-red-900">
            Email address : {userInfo?.EMAIL}
          </h3> 
          {userInfo.role === 'admin' && (
            <h3 className="text-xl my-5 font-bold tracking-tight text-red-900">
              Role : {userInfo.role}
            </h3>
          )}
          </div>

        <div className="border-t border-gray-200 px-4 py-6 sm:px-6">
         

          <p className="mt-0.5 text-sm text-gray-500">Your Personal Information :</p>
          
            <div key={index}>
              {selectedEditIndex === index ? (
                <form
                  className="bg-white px-5 py-12 mt-12"
                  noValidate
                  onSubmit={handleSubmit((data) => {
                    console.log("edit info");
                    console.log(data);
                    handleEdit(data, index);
                    // reset();
                  })}
                >
                  <div className="space-y-12">
                    <div className="border-b border-gray-900/10 pb-12">
                      <h2 className="text-2xl font-semibold leading-7 text-gray-900">
                        Personal Information
                      </h2>
                      <p className="mt-1 text-sm leading-6 text-gray-600">
                        Use a permanent address where you can receive mail.
                      </p>

                      <div className="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
                        <div className="sm:col-span-4">
                          <label
                            htmlFor="firstName"
                            className="block text-sm font-medium leading-6 text-gray-900"
                          >
                            First Name
                          </label>
                          <div className="mt-2">
                            <input
                              type="text"
                              {...register('FIRST_NAME', {
                                required: 'First Name is required',
                              })}
                              id="FIRST_NAME"
                              className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                            {errors.FIRST_NAME && (
                              <p className="text-red-500">
                                {errors.FIRST_NAME.message}
                              </p>
                            )}
                          </div>
                          <label
                            htmlFor="LastName"
                            className="block text-sm font-medium leading-6 text-gray-900"
                          >
                            Last Name
                          </label>
                          
                          
                          <div className="mt-2">
                            <input
                              type="text"
                              {...register('LAST_NAME', {
                                required: 'Last Name is required',
                              })}
                              id="LAST_NAME"
                              className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                            {errors.LAST_NAME && (
                              <p className="text-red-500">
                                {errors.LAST_NAME.message}
                              </p>
                            )}
                          </div>
                        </div>

                        <div className="sm:col-span-4">
                          <label
                            htmlFor="email"
                            className="block text-sm font-medium leading-6 text-gray-900"
                          >
                            Email address
                          </label>
                          <div className="mt-2">
                            <input
                              id="EMAIL"
                              {...register('EMAIL', {
                                required: 'email is required',
                              })}
                              type="EMAIL"
                              className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                            {errors.EMAIL && (
                              <p className="text-red-500">
                                {errors.EMAIL.message}
                              </p>
                            )}
                          </div>
                        </div>
                        <div className="sm:col-span-4">
                          <label
                            htmlFor="PassWord"
                            className="block text-sm font-medium leading-6 text-gray-900"
                          >
                            PassWord
                          </label>
                          <div className="mt-2">
                            <input
                              id="PASSWORD"
                              {...register('PASSWORD', {
                                required: 'Password is required',
                              })}
                              type="password"
                              className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                            {errors.PASSWORD && (
                              <p className="text-red-500">
                                {errors.PASSWORD.message}
                              </p>
                            )}
                          </div>
                        </div>
                        <div className="sm:col-span-4">
                          <label
                            htmlFor="Date Of Birth"
                            className="block text-sm font-medium leading-6 text-gray-900"
                          >
                            Date Of Birth
                          </label>
                          <div className="mt-2">
                            <input
                              id="DATE_OF_BIRTH"
                              {...register('DATE_OF_BIRTH', {
                                required: 'Date of birth is required',
                              })}
                              type="date"
                              className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                            {errors.DATE_OF_BIRTH && (
                              <p className="text-red-500">
                                {errors.DATE_OF_BIRTH.message}
                              </p>
                            )}
                          </div>
                        </div>


                        <div className="sm:col-span-3">
                          <label
                            htmlFor="phone"
                            className="block text-sm font-medium leading-6 text-gray-900"
                          >
                            Contact No
                          </label>
                          <div className="mt-2">
                            <input
                              id="CONTACTN0S"
                              {...register('CONTACTN0S', {
                                required: 'Contact No is required',
                              })}
                              type="tel"
                              className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                            {errors.CONTACTN0S && (
                              <p className="text-red-500">
                                {errors.CONTACTN0S.message}
                              </p>
                            )}
                          </div>
                        </div>

                        <div className="col-span-full">
                          <label
                            htmlFor="house"
                            className="block text-sm font-medium leading-6 text-gray-900"
                          >
                            House No
                          </label>
                          <div className="mt-2">
                            <input
                              type="text"
                              {...register('HOUSE', {
                                required: 'House is required',
                              })}
                              id="HOUSE"
                              className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                            {errors.HOUSE && (
                              <p className="text-red-500">
                                {errors.HOUSE.message}
                              </p>
                            )}
                          </div>
                        </div>
                        <div className="col-span-full">
                          <label
                            htmlFor="road"
                            className="block text-sm font-medium leading-6 text-gray-900"
                          >
                            Road No
                          </label>
                          <div className="mt-2">
                            <input
                              type="text"
                              {...register('ROAD', {
                                required: 'Road is required',
                              })}
                              id="ROAD"
                              className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                            {errors.ROAD && (
                              <p className="text-red-500">
                                {errors.ROAD.message}
                              </p>
                            )}
                          </div>
                        </div>
                        <div className="col-span-full">
                          <label
                            htmlFor="area"
                            className="block text-sm font-medium leading-6 text-gray-900"
                          >
                            Area
                          </label>
                          <div className="mt-2">
                            <input
                              type="text"
                              {...register('AREA', {
                                required: 'Area is required',
                              })}
                              id="AREA"
                              className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                            {errors.AREA && (
                              <p className="text-red-500">
                                {errors.AREA.message}
                              </p>
                            )}
                          </div>
                        </div>

                        <div className="sm:col-span-2 sm:col-start-1">
                          <label
                            htmlFor="city"
                            className="block text-sm font-medium leading-6 text-gray-900"
                          >
                            City
                          </label>
                          <div className="mt-2">
                            <input
                              type="text"
                              {...register('CITY', {
                                required: 'city is required',
                              })}
                              id="CITY"
                              autoComplete="address-level2"
                              className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                            {errors.CITY && (
                              <p className="text-red-500">
                                {errors.CITY.message}
                              </p>
                            )}
                          </div>
                        </div>

                        <div className="sm:col-span-2">
                          <label
                            htmlFor="state"
                            className="block text-sm font-medium leading-6 text-gray-900"
                          >
                            State / Province
                          </label>
                          <div className="mt-2">
                            <input
                              type="text"
                              {...register('STATE', {
                                required: 'state is required',
                              })}
                              id="STATE"
                              className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                            {errors.STATE && (
                              <p className="text-red-500">
                                {errors.STATE.message}
                              </p>
                            )}
                          </div>
                        </div>

                        
                      </div>
                    </div>

                    <div className="mt-6 flex items-center justify-end gap-x-6">
                      <button
                        onClick={(e) => setSelectedEditIndex(-1)}
                        type="submit"
                        className="rounded-md px-3 py-2 text-sm font-semibold text-grey shadow-sm hover:bg-grey-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                      >
                        Cancel
                      </button>
                      <button
                        type="submit"
                        className="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                      >
                        Save Changes
                      </button>
                    </div>
                  </div>
                </form>
              ) : null}
              <div className="flex justify-between gap-x-6 px-5 py-5 border-solid border-2 border-gray-200">
                <div className="flex gap-x-4">
                  <div className="min-w-0 flex-auto">
                    <p className="mt-1 truncate text-xs leading-5 text-gray-500">
                      Road:{userInfo?.ROAD}
                    </p>
                    <p className="mt-1 truncate text-xs leading-5 text-gray-500">
                      State:{userInfo?.STATE}
                    </p>
                  </div>
                </div>
                <div className="hidden sm:flex sm:flex-col sm:items-end">
                  <p className="text-sm leading-6 text-gray-900">
                    Phone: {userInfo?.CONTACTN0S}
                  </p>
                  <p className="text-sm leading-6 text-gray-500">
                    City:{userInfo?.CITY}
                  </p>
                </div>
                <div className="hidden sm:flex sm:flex-col sm:items-end">
                  <button
                    onClick={(e) => handleEditForm(index)}
                    type="button"
                    className="font-medium text-indigo-600 hover:text-indigo-500"
                  >
                    Edit
                  </button>
                 
                </div>
              </div>
            </div>
          
        </div>
      </div>
    </div>
  );
}
