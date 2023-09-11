# GadgetShop

#Basic queries
1. At least 5 INSERT queries
    i. db-carts.js: addToCart
    ii. db-customer.js: createCustomer
    iii. db-customer.js: updateContactById
    iv. db-order.js: createOrder
    v. db-products.js: createProduct
    vi. db-supplier.js: createSupplier

2. At least 2 user actions that cause insertions spanning 3 tables
    i. 
    ii.

3. At least 3 UPDATE queries  
    i. db-carts.js: updateCartById
    ii. db-customer.js: updateCustomerById
    iii. db-order.js: updateOrderTrackingById
    iv. db-products.js: updateProductById
    v. db-supplier.js: updateSupplierById

4. At least 2 user interactions that cause update spanning 2 tables
    i. db-customer.js: updateCustomer
    ii. db-products.js: updateProductById
5. Users are able to select parameters for these queries

6. At least 3 DELETE queries
    i. db-carts.js: deleteFromCart
    ii. db-customer.js: updateContactById
    iii. db-products.js: deleteProduct

7. At least 1 cascade deleting 
    i. db-products.js: deleteProduct
8. Soft delete not required



#ADVANCED QUERY
1. At least 5 such queries 
    i. db-carts.js: getCartBYCustomer
    ii. db-order.js: getOrderBYCustomer
    iii. db-products.js: getAllProduct
    iv. db-products.js: getAllProductsByCategory
    v. db-products.js: getAllProductsBySupplier
    vi. db-products.js: getLimitedProducts
    vii. db-products.js: getProductBYId
    viii. db-products.js: getAllProductsByFilter
    ix. db-products.js: getReviewById

2. At least 2 queries with 3 joins
    i. db-carts.js: getCartBYCustomer
    ii. db-order.js: getOrderBYCustomer
    iii. db-products.js: getAllProduct
    iv. db-products.js: getProductBYId

3. User must be able to select parameters
    i. db-carts.js: getCartBYCustomer
    ii. db-order.js: getOrderBYCustomer
    iii. db-products.js: getAllProductsByCategory
    iv. db-products.js: getAllProductsBySupplier
    v. db-products.js: getProductBYId
    vi. db-products.js: getReviewById

#PL/SQL
1. At least 3 triggers
2. At least 3 stored procedures
3. At least 2 functions




