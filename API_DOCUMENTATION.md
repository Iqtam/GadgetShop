# GadgetShop API Documentation

**Base URL:** `http://localhost:8000/api/v1`

All requests and responses use `Content-Type: application/json`.

---

## Table of Contents

- [Authentication](#authentication)
  - [POST /auth/signup](#post-authsignup)
  - [POST /auth/signin](#post-authsignin)
- [Products](#products)
  - [GET /products](#get-products)
  - [GET /products/categories](#get-productscategories)
  - [GET /products/brands](#get-productsbrands)
  - [GET /products/category/:category](#get-productscategorycategory)
  - [GET /products/limit=:limit](#get-productslimitlimit)
  - [GET /products/supplierId=:supplierId](#get-productssupplieridsupplierid)
  - [GET /products/search](#get-productssearch)
  - [GET /products/:id](#get-productsid)
  - [GET /products/similar-products/product-id=:product_id/category-id=:category_id/limit=:limit](#get-productssimilar-products)
  - [GET /products/riviews/:id](#get-productsrivieswsid)
  - [POST /products/create-product](#post-productscreate-product)
  - [PATCH /products/update-productid=:id](#patch-productsupdate-productidid)
  - [DELETE /products/delete-product/:id](#delete-productsdelete-productid)
- [Customer](#customer)
  - [GET /customer/customer=:id](#get-customercustomerid)
  - [PATCH /customer/update-customer=:id](#patch-customerupdate-customerid)
- [Supplier](#supplier)
  - [GET /supplier/supplier=:id](#get-suppliersupplierid)
  - [PATCH /supplier/update-supplier=:id](#patch-supplierupdate-supplierid)
- [Orders](#orders)
  - [POST /orders/create-order](#post-orderscreate-order)
  - [GET /orders/customer=:id](#get-orderscustomerid)
  - [GET /orders/supplier-orders=:id](#get-orderssupplier-ordersid)
  - [GET /orders/shipping-method/:id](#get-ordersshipping-methodid)
  - [PATCH /orders/update-order-tracking=:id](#patch-ordersupdate-order-trackingid)
- [Cart](#cart)
  - [GET /cart/customer/:id](#get-cartcustomerid)
  - [POST /cart/add](#post-cartadd)
  - [PATCH /cart/update-cart=:id](#patch-cartupdate-cartid)
  - [DELETE /cart/delete](#delete-cartdelete)
- [Database Schema](#database-schema)

---

## Authentication

### POST /auth/signup

Register a new customer or supplier account.

**Request Body**

| Field       | Type   | Required | Description                        |
|-------------|--------|----------|------------------------------------|
| `email`     | string | Yes      | Unique email address               |
| `password`  | string | Yes      | Plain-text password (bcrypt-hashed server-side) |
| `firstName` | string | Yes      | First name                         |
| `lastName`  | string | Yes      | Last name                          |
| `role`      | string | Yes      | `"customer"` or `"supplier"`       |

**Example Request**
```json
{
  "email": "john@example.com",
  "password": "mypassword123",
  "firstName": "John",
  "lastName": "Doe",
  "role": "customer"
}
```

**Responses**

| Status | Description                                    |
|--------|------------------------------------------------|
| `201`  | User created successfully                      |
| `400`  | Email already registered                       |
| `500`  | Internal server error                          |

**201 Response Body**
```json
{
  "message": "User signed up successfully",
  "user": {
    "CUSTOMER_ID": 42,
    "FIRST_NAME": "John",
    "LAST_NAME": "Doe",
    "EMAIL": "john@example.com",
    "ROLE": "customer"
  }
}
```

---

### POST /auth/signin

Authenticate an existing user (customer or supplier).

**Request Body**

| Field      | Type   | Required | Description      |
|------------|--------|----------|------------------|
| `email`    | string | Yes      | Registered email |
| `password` | string | Yes      | Plain-text password |

**Example Request**
```json
{
  "email": "john@example.com",
  "password": "mypassword123"
}
```

**Responses**

| Status | Description                  |
|--------|------------------------------|
| `200`  | Login successful             |
| `401`  | Password does not match      |
| `404`  | Email not found              |
| `500`  | Internal server error        |

**200 Response Body**
```json
{
  "message": "Login successful",
  "user": {
    "CUSTOMER_ID": 42,
    "FIRST_NAME": "John",
    "LAST_NAME": "Doe",
    "EMAIL": "john@example.com",
    "ROLE": "customer"
  }
}
```

---

## Products

### GET /products

Get all products, optionally filtered. Filters are passed in the **request body**.

**Request Body (optional)**

| Field      | Type   | Description                     |
|------------|--------|---------------------------------|
| `category` | string | Filter by category name         |
| `brand`    | string | Filter by brand name            |
| `priceMin` | number | Minimum price                   |
| `priceMax` | number | Maximum price                   |

**200 Response Body** — array of product objects:
```json
[
  {
    "PRODUCT_ID": 1,
    "TITLLE": "Samsung Galaxy S23",
    "PRICE": 999.99,
    "STOCK": 50,
    "DESCRIPTION": "...",
    "IMAGE": "https://...",
    "CATEGORY_ID": 3,
    "CATEGORY_NAME": "Smartphones",
    "BRAND": "Samsung",
    "PERCENT_DISCOUNT": 10,
    "DISCOUNTED_PRICE": 899.99
  }
]
```

> Note: `PERCENT_DISCOUNT` and `DISCOUNTED_PRICE` reflect any active offer; both are `0`/original price when no offer is running.

---

### GET /products/categories

Get all leaf-level product categories.

**200 Response Body**
```json
[
  { "CATEGORY_ID": 3, "CATEGORY_NAME": "Smartphones", "CHILD_PARENT_CATEGORY_ID": 1 },
  { "CATEGORY_ID": 4, "CATEGORY_NAME": "Laptops", "CHILD_PARENT_CATEGORY_ID": 1 }
]
```

---

### GET /products/brands

Get all distinct brand names.

**200 Response Body**
```json
[
  { "BRAND": "Samsung" },
  { "BRAND": "Apple" },
  { "BRAND": "Sony" }
]
```

---

### GET /products/category/:category

Get all products belonging to a given category (case-insensitive, space-insensitive match).

**URL Parameters**

| Parameter  | Description             |
|------------|-------------------------|
| `category` | Category name string    |

**Example:** `GET /products/category/Smartphones`

**200 Response Body** — same product array format as [GET /products](#get-products).

---

### GET /products/limit=:limit

Get a limited set of products sampled evenly across categories.

**URL Parameters**

| Parameter | Type   | Description                               |
|-----------|--------|-------------------------------------------|
| `limit`   | number | Total product count ceiling (distributed across categories, each gets `limit/10`) |

**Example:** `GET /products/limit=30`

**200 Response Body** — same product array format as [GET /products](#get-products).

---

### GET /products/supplierId=:supplierId

Get all products listed by a specific supplier.

**URL Parameters**

| Parameter    | Type   | Description     |
|--------------|--------|-----------------|
| `supplierId` | number | Supplier's ID   |

**Example:** `GET /products/supplierId=7`

**200 Response Body** — array of products including `CATEGORY_NAME`.

---

### GET /products/search

Search products by title, brand, or description.

**Query Parameters**

| Parameter | Type   | Required | Description     |
|-----------|--------|----------|-----------------|
| `q`       | object | Yes      | Search object with a `text` field: `{ "text": "samsung" }` |

**Example:** `GET /products/search?q={"text":"samsung"}`

> The `q` parameter is parsed as an object `{ text: string }`. Pass it URL-encoded.

**Responses**

| Status | Description                  |
|--------|------------------------------|
| `200`  | Array of matching products   |
| `400`  | Missing search query         |

---

### GET /products/:id

Get a single product by its ID.

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Product ID  |

**Example:** `GET /products/12`

**200 Response Body** — array with one product object (same fields as [GET /products](#get-products)).

---

### GET /products/similar-products

Get products similar to a given product (same category, different product ID).

**Full Path:**
```
GET /products/similar-products/product-id=:product_id/category-id=:category_id/limit=:limit
```

**URL Parameters**

| Parameter     | Type   | Description                               |
|---------------|--------|-------------------------------------------|
| `product_id`  | number | The product to find alternatives for      |
| `category_id` | number | Category to search within                 |
| `limit`       | number | Maximum number of similar products        |

**Example:** `GET /products/similar-products/product-id=12/category-id=3/limit=5`

**200 Response Body** — same product array format as [GET /products](#get-products).

---

### GET /products/riviews/:id

Get all reviews for a product.

> Note: The route has a typo (`riviews` instead of `reviews`).

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Product ID  |

**Example:** `GET /products/riviews/12`

**200 Response Body**
```json
[
  {
    "RATINGS": 5,
    "COMMENTS": "Excellent product!",
    "CUSTOMER_NAME": "John Doe"
  }
]
```

---

### POST /products/create-product

Create a new product listing (Supplier only).

**Request Body**

| Field         | Type   | Required | Description           |
|---------------|--------|----------|-----------------------|
| `PRODUCT_ID`  | number | Yes      | Unique product ID     |
| `TITLLE`      | string | Yes      | Product title (note the double-L typo matches DB column) |
| `PRICE`       | number | Yes      | Price                 |
| `STOCK`       | number | Yes      | Available stock       |
| `DESCRIPTION` | string | Yes      | Product description   |
| `IMAGE`       | string | Yes      | Image URL             |
| `SUPPLIER_ID` | number | Yes      | ID of the supplier    |
| `CATEGORY_ID` | number | Yes      | ID of the category    |
| `BRAND`       | string | Yes      | Brand name            |

**Example Request**
```json
{
  "PRODUCT_ID": 101,
  "TITLLE": "Sony WH-1000XM5",
  "PRICE": 349.99,
  "STOCK": 20,
  "DESCRIPTION": "Noise cancelling headphones",
  "IMAGE": "https://example.com/image.jpg",
  "SUPPLIER_ID": 7,
  "CATEGORY_ID": 5,
  "BRAND": "Sony"
}
```

**200 Response Body** — Oracle INSERT result rows.

---

### PATCH /products/update-productid=:id

Update an existing product's details.

**URL Parameters**

| Parameter | Type   | Description     |
|-----------|--------|-----------------|
| `id`      | number | Product ID      |

**Request Body**

| Field         | Type   | Description              |
|---------------|--------|--------------------------|
| `TITLLE`      | string | Updated title            |
| `PRICE`       | number | Updated price            |
| `STOCK`       | number | Updated stock count      |
| `DESCRIPTION` | string | Updated description      |
| `IMAGE`       | string | Updated image URL        |
| `BRAND`       | string | Updated brand name       |

**200 Response Body** — Oracle UPDATE result rows.

---

### DELETE /products/delete-product/:id

Delete a product and all its associated data (features, offers, cart entries).

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Product ID  |

**Responses**

| Status | Description             |
|--------|-------------------------|
| `200`  | Product deleted         |
| `404`  | Product not found       |

---

## Customer

### GET /customer/customer=:id

Get a customer's full profile including contact numbers.

**URL Parameters**

| Parameter | Type   | Description  |
|-----------|--------|--------------|
| `id`      | number | Customer ID  |

**Example:** `GET /customer/customer=42`

**200 Response Body**
```json
{
  "CUSTOMER_ID": 42,
  "FIRST_NAME": "John",
  "LAST_NAME": "Doe",
  "EMAIL": "john@example.com",
  "AREA": "Mirpur",
  "CITY": "Dhaka",
  "STATE": "Dhaka",
  "HOUSE": "12",
  "ROAD": "5",
  "DATE_OF_BIRTH": "1998-05-20T00:00:00.000Z",
  "CONTACT_N0s": "[\"01712345678\"]",
  "role": "customer"
}
```

---

### PATCH /customer/update-customer=:id

Update a customer's profile and replace their contact numbers.

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Customer ID |

**Request Body**

| Field          | Type   | Description                              |
|----------------|--------|------------------------------------------|
| `FIRST_NAME`   | string | First name                               |
| `LAST_NAME`    | string | Last name                                |
| `EMAIL`        | string | Email address                            |
| `PASSWORD`     | string | Password                                 |
| `AREA`         | string | Area/neighbourhood                       |
| `CITY`         | string | City                                     |
| `STATE`        | string | State/division                           |
| `HOUSE`        | string | House number                             |
| `ROAD`         | string | Road number                              |
| `DATE_OF_BIRTH`| string | Date of birth (ISO 8601)                 |
| `contacts`     | array  | Array of `{ "CONTACT_NO": "..." }` objects — replaces all existing contacts |

**Example Request**
```json
{
  "FIRST_NAME": "John",
  "LAST_NAME": "Doe",
  "EMAIL": "john@example.com",
  "PASSWORD": "hashed_password",
  "CITY": "Dhaka",
  "STATE": "Dhaka",
  "contacts": [
    { "CONTACT_NO": "01712345678" },
    { "CONTACT_NO": "01898765432" }
  ]
}
```

**200 Response Body** — Oracle UPDATE result rows.

---

## Supplier

### GET /supplier/supplier=:id

Get a supplier's full profile.

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Supplier ID |

**Example:** `GET /supplier/supplier=7`

**200 Response Body**
```json
{
  "SUPPLIER_ID": 7,
  "FIRST_NAME": "Jane",
  "LAST_NAME": "Smith",
  "COMPANY_NAME": "TechGear Ltd.",
  "EMAIL": "jane@techgear.com",
  "WEBSITE": "https://techgear.com",
  "HOUSE": "5",
  "ROAD": "12",
  "AREA": "Gulshan",
  "CITY": "Dhaka",
  "STATE": "Dhaka",
  "role": "supplier"
}
```

---

### PATCH /supplier/update-supplier=:id

Update a supplier's profile.

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Supplier ID |

**Request Body**

| Field          | Type   | Description          |
|----------------|--------|----------------------|
| `FIRST_NAME`   | string | First name           |
| `LAST_NAME`    | string | Last name            |
| `COMPANY_NAME` | string | Company name         |
| `EMAIL`        | string | Email address        |
| `WEBSITE`      | string | Website URL          |
| `PASSWORD`     | string | Password             |
| `HOUSE`        | string | House number         |
| `ROAD`         | string | Road number          |
| `AREA`         | string | Area                 |
| `CITY`         | string | City                 |
| `STATE`        | string | State/division       |

**200 Response Body** — Oracle UPDATE result rows.

---

## Orders

### POST /orders/create-order

Place a new order from the customer's cart.

**Request Body**

| Field         | Type   | Required | Description                   |
|---------------|--------|----------|-------------------------------|
| `ORDER_ID`    | number | Yes      | Unique order ID               |
| `ORDER_DATE`  | string | Yes      | ISO 8601 date string          |
| `HOUSE`       | string | Yes      | Delivery house number         |
| `ROAD`        | string | Yes      | Delivery road                 |
| `AREA`        | string | Yes      | Delivery area                 |
| `CITY`        | string | Yes      | Delivery city                 |
| `STATE`       | string | Yes      | Delivery state                |
| `CART_ID`     | number | Yes      | Cart being converted to order |
| `CUSTOMER_ID` | number | Yes      | Placing customer's ID         |
| `SHIPPING_ID` | number | Yes      | Chosen shipping method ID     |

**Example Request**
```json
{
  "ORDER_ID": 1001,
  "ORDER_DATE": "2024-01-15T10:00:00.000Z",
  "HOUSE": "12",
  "ROAD": "5",
  "AREA": "Mirpur",
  "CITY": "Dhaka",
  "STATE": "Dhaka",
  "CART_ID": 55,
  "CUSTOMER_ID": 42,
  "SHIPPING_ID": 2
}
```

**200 Response Body** — the first row of the Oracle INSERT result.

---

### GET /orders/customer=:id

Get all orders placed by a customer, ordered by date descending.

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Customer ID |

**Example:** `GET /orders/customer=42`

**200 Response Body**
```json
[
  {
    "ORDER_ID": 1001,
    "ORDER_DATE": "2024-01-15T10:00:00.000Z",
    "HOUSE": "12",
    "ROAD": "5",
    "AREA": "Mirpur",
    "CITY": "Dhaka",
    "STATE": "Dhaka",
    "CART_ID": 55,
    "SHIPPING_NAME": "Express Delivery",
    "CHARGE": 60,
    "PRODUCT_ID": 12,
    "TITLLE": "Sony WH-1000XM5",
    "QUANTITY": 1,
    "TOTAL_PRICE": 349.99,
    "IMAGE": "https://...",
    "BRAND": "Sony"
  }
]
```

> One row per product per order — if an order has multiple products it appears as multiple rows sharing the same `ORDER_ID`.

---

### GET /orders/supplier-orders=:id

Get all orders that contain products belonging to a specific supplier, ordered by date descending.

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Supplier ID |

**Example:** `GET /orders/supplier-orders=7`

**200 Response Body** — same format as [GET /orders/customer=:id](#get-orderscustomerid).

---

### GET /orders/shipping-method/:id

Get the shipping method details for a specific order.

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Order ID    |

**Example:** `GET /orders/shipping-method/1001`

**200 Response Body**
```json
[
  {
    "SHIPPING_ID": 2,
    "SHIPPING_NAME": "Express Delivery",
    "CHARGE": 60
  }
]
```

---

### PATCH /orders/update-order-tracking=:id

Update the tracking status of an order.

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Order ID    |

**Request Body**

| Field    | Type   | Required | Description                                      |
|----------|--------|----------|--------------------------------------------------|
| `STATUS` | string | Yes      | New tracking status (e.g. `"Shipped"`, `"Delivered"`) |

**Example Request**
```json
{
  "STATUS": "Shipped"
}
```

**200 Response Body**
```json
"Shipping status updated successfully"
```

---

## Cart

### GET /cart/customer/:id

Get all items currently in a customer's cart.

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Customer ID |

**Example:** `GET /cart/customer/42`

**200 Response Body**
```json
[
  {
    "CUSTOMER_ID": 42,
    "CART_ID": 55,
    "PRODUCT_ID": 12,
    "TITLLE": "Sony WH-1000XM5",
    "QUANTITY": 2,
    "TOTAL_PRICE": 699.98
  }
]
```

---

### POST /cart/add

Add a product to a customer's cart.

**Request Body**

| Field         | Type   | Required | Description                     |
|---------------|--------|----------|---------------------------------|
| `QUANTITY`    | number | Yes      | Number of units to add          |
| `CART_ID`     | number | Yes      | Customer's cart ID              |
| `CUSTOMER_ID` | number | Yes      | Customer ID                     |
| `PRODUCT_ID`  | number | Yes      | Product to add                  |
| `SUPPLIER_ID` | number | Yes      | Supplier of the product         |

**Example Request**
```json
{
  "QUANTITY": 1,
  "CART_ID": 55,
  "CUSTOMER_ID": 42,
  "PRODUCT_ID": 12,
  "SUPPLIER_ID": 7
}
```

**200 Response Body** — Oracle INSERT result rows.

---

### PATCH /cart/update-cart=:id

Update the quantity of an item in the cart.

**URL Parameters**

| Parameter | Type   | Description |
|-----------|--------|-------------|
| `id`      | number | Cart ID     |

**Request Body**

| Field        | Type   | Description        |
|--------------|--------|--------------------|
| `PRODUCT_ID` | number | Product to update  |
| `QUANTITY`   | number | New quantity       |

**200 Response Body**
```json
"Cart updated successfully"
```

---

### DELETE /cart/delete

Remove a specific product from a cart.

**Query Parameters**

| Parameter    | Type   | Required | Description    |
|--------------|--------|----------|----------------|
| `product_id` | number | Yes      | Product to remove |
| `cart_id`    | number | Yes      | Cart to remove from |

**Example:** `DELETE /cart/delete?product_id=12&cart_id=55`

**Responses**

| Status | Description                    |
|--------|--------------------------------|
| `200`  | `{ "message": "Cart item deleted successfully" }` |
| `404`  | `{ "error": "Cart item not deleted" }` |

---

## Database Schema

The backend uses an Oracle Database schema named `GADGETSHOP`. Key tables:

### CUSTOMER
| Column          | Type     | Notes                          |
|-----------------|----------|--------------------------------|
| CUSTOMER_ID     | NUMBER   | Primary key (auto-generated)   |
| FIRST_NAME      | VARCHAR2 |                                |
| LAST_NAME       | VARCHAR2 |                                |
| EMAIL           | VARCHAR2 | Unique                         |
| PASSWORD        | VARCHAR2 | bcrypt hash                    |
| AREA            | VARCHAR2 |                                |
| CITY            | VARCHAR2 |                                |
| STATE           | VARCHAR2 |                                |
| HOUSE           | VARCHAR2 |                                |
| ROAD            | VARCHAR2 |                                |
| DATE_OF_BIRTH   | DATE     |                                |

### CUSTOMER_CONTACT_NO
| Column     | Type     | Notes                      |
|------------|----------|----------------------------|
| CUSTOMER_ID| NUMBER   | FK → CUSTOMER              |
| CONTACT_NO | VARCHAR2 | Phone number               |

### SUPPLIER
| Column       | Type     | Notes                        |
|--------------|----------|------------------------------|
| SUPPLIER_ID  | NUMBER   | Primary key                  |
| FIRST_NAME   | VARCHAR2 |                              |
| LAST_NAME    | VARCHAR2 |                              |
| EMAIL        | VARCHAR2 | Unique                       |
| PASSWORD     | VARCHAR2 | bcrypt hash                  |
| COMPANY_NAME | VARCHAR2 |                              |
| HOUSE        | VARCHAR2 |                              |
| ROAD         | VARCHAR2 |                              |
| AREA         | VARCHAR2 |                              |
| CITY         | VARCHAR2 |                              |
| STATE        | VARCHAR2 |                              |
| WEBSITE      | VARCHAR2 |                              |

### PRODUCT
| Column      | Type     | Notes                                      |
|-------------|----------|--------------------------------------------|
| PRODUCT_ID  | NUMBER   | Primary key                                |
| TITLLE      | VARCHAR2 | Product title (intentional typo in schema) |
| PRICE       | NUMBER   |                                            |
| STOCK       | NUMBER   |                                            |
| DESCRIPTION | CLOB     |                                            |
| IMAGE       | VARCHAR2 | URL                                        |
| SUPPLIER_ID | NUMBER   | FK → SUPPLIER                              |
| CATEGORY_ID | NUMBER   | FK → CATEGORY                              |
| BRAND       | VARCHAR2 |                                            |

### CATEGORY
| Column                  | Type     | Notes                      |
|-------------------------|----------|----------------------------|
| CATEGORY_ID             | NUMBER   | Primary key                |
| CATEGORY_NAME           | VARCHAR2 |                            |
| CHILD_PARENT_CATEGORY_ID| NUMBER   | FK → CATEGORY (self-ref); NULL = root |

### CART
| Column      | Type   | Notes             |
|-------------|--------|-------------------|
| CART_ID     | NUMBER | Primary key       |
| CUSTOMER_ID | NUMBER | FK → CUSTOMER     |

### PRODUCT_CART
| Column      | Type   | Notes                  |
|-------------|--------|------------------------|
| CART_ID     | NUMBER | FK → CART              |
| PRODUCT_ID  | NUMBER | FK → PRODUCT           |
| CUSTOMER_ID | NUMBER | FK → CUSTOMER          |
| SUPPLIER_ID | NUMBER | FK → SUPPLIER          |
| QUANTITY    | NUMBER |                        |
| TOTAL_PRICE | NUMBER |                        |

### ORDERS
| Column      | Type     | Notes              |
|-------------|----------|--------------------|
| ORDER_ID    | NUMBER   | Primary key        |
| ORDER_DATE  | DATE     |                    |
| HOUSE       | VARCHAR2 | Delivery address   |
| ROAD        | VARCHAR2 |                    |
| AREA        | VARCHAR2 |                    |
| CITY        | VARCHAR2 |                    |
| STATE       | VARCHAR2 |                    |
| CART_ID     | NUMBER   | FK → CART          |
| CUSTOMER_ID | NUMBER   | FK → CUSTOMER      |
| SHIPPING_ID | NUMBER   | FK → SHIPPING_METHOD |

### ORDER_TRACKING
| Column   | Type     | Notes          |
|----------|----------|----------------|
| ORDER_ID | NUMBER   | FK → ORDERS    |
| STATUS   | VARCHAR2 | Tracking status|

### SHIPPING_METHOD
| Column        | Type     | Notes    |
|---------------|----------|----------|
| SHIPPING_ID   | NUMBER   | Primary key |
| SHIPPING_NAME | VARCHAR2 |          |
| CHARGE        | NUMBER   |          |

### OFFER
| Column           | Type   | Notes            |
|------------------|--------|------------------|
| OFFER_ID         | NUMBER | Primary key      |
| START_DATE       | DATE   |                  |
| END_DATE         | DATE   |                  |
| PERCENT_DISCOUNT | NUMBER | Discount percent |

### PRODUCT_OFFER
| Column     | Type   | Notes          |
|------------|--------|----------------|
| PRODUCT_ID | NUMBER | FK → PRODUCT   |
| OFFER_ID   | NUMBER | FK → OFFER     |

### REVIEWS
| Column      | Type     | Notes          |
|-------------|----------|----------------|
| PRODUCT_ID  | NUMBER   | FK → PRODUCT   |
| CUSTOMER_ID | NUMBER   | FK → CUSTOMER  |
| RATINGS     | NUMBER   | e.g. 1–5       |
| COMMENTS    | VARCHAR2 |                |

### PRODUCT_FEATURES
| Column     | Type   | Notes          |
|------------|--------|----------------|
| PRODUCT_ID | NUMBER | FK → PRODUCT   |
| (other feature columns) | | |
