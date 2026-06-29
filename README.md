# GadgetShop

A full-stack e-commerce web application for buying and selling electronics/gadgets, built with Node.js/Express on the backend and React on the frontend, backed by an Oracle Database.

---

## Table of Contents

- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Database Setup](#database-setup)
  - [Backend Setup](#backend-setup)
  - [Frontend Setup](#frontend-setup)
- [Environment Variables](#environment-variables)
- [Available Scripts](#available-scripts)
- [Frontend Routes](#frontend-routes)
- [API Overview](#api-overview)
- [User Roles](#user-roles)

---

## Features

**Customer**
- Browse products by category or brand
- Search products by name, brand, or description
- View product details and customer reviews
- Manage a shopping cart (add, update, remove items)
- Checkout and place orders with a chosen shipping method
- View order history
- Edit profile and contact information

**Supplier**
- Add, edit, and delete product listings
- View and manage orders containing their products
- Update order tracking status

---

## Tech Stack

| Layer      | Technology                                                                 |
|------------|----------------------------------------------------------------------------|
| Frontend   | React 18, Redux Toolkit, React Router v6, Material UI, Tailwind CSS, SCSS |
| Backend    | Node.js, Express.js                                                        |
| Database   | Oracle Database (OracleDB node client)                                     |
| Auth       | bcrypt password hashing (session data stored client-side via Redux)        |
| Styling    | MUI, Tailwind CSS 3, SCSS, react-slick                                     |

---

## Project Structure

```
GadgetShop/
├── backend/
│   ├── app.js                   # Express app setup, CORS, middleware
│   ├── server.js                # Entry point — starts server & DB pool
│   ├── database/
│   │   ├── create-and-executedb.js   # OracleDB connection pool & execute helper
│   │   ├── db-products.js            # Product queries
│   │   ├── db-customer.js            # Customer queries
│   │   ├── db-supplier.js            # Supplier queries
│   │   ├── db-order.js               # Order queries
│   │   └── db-cart.js                # Cart queries
│   └── router/
│       ├── indexrouter.js            # Mounts sub-routers at /api/v1/*
│       ├── Authentication/
│       │   └── Authentication.js     # /auth/signup, /auth/signin
│       ├── Products/
│       │   └── products.js           # /products/*
│       ├── User/
│       │   ├── Customer.js           # /customer/*
│       │   └── Supplier.js           # /supplier/*
│       ├── Orders/
│       │   └── Orders.js             # /orders/*
│       └── cart/
│           └── cart.js               # /cart/*
│
└── frontend/
    ├── package.json
    └── src/
        ├── App.js                # Root component, React Router routes
        ├── pages/
        │   ├── HomePage/
        │   ├── CategoryProductPage/
        │   ├── ProductSinglePage/
        │   ├── CartPage/
        │   ├── CheckoutPage/
        │   ├── SearchPage/
        │   ├── LoginPage/
        │   ├── SignupPage/
        │   ├── UserPage/         # Customer profile & orders
        │   ├── SupplierPage/     # Supplier product management & orders
        │   └── NotFoundPage/
        ├── components/
        │   ├── Header/
        │   ├── Navbar/
        │   ├── Sidebar/
        │   ├── Footer/
        │   ├── Product/
        │   ├── ProductList/
        │   ├── CartModal/
        │   ├── Slider/
        │   └── Authentication/
        └── store/                # Redux slices and API thunks
            ├── store.js
            ├── productSlice.js / productAPI.js
            ├── cartSlice.js
            ├── orderSlice.js / orderAPI.js
            ├── authenticationSlice.js / authenticationAPI.js
            ├── userSlice.js / userAPI.js
            ├── categorySlice.js
            └── searchSlice.js
```

---

## Prerequisites

- Node.js >= 16
- Oracle Database 19c+ with a pluggable database named `ORCLPDB`
- Oracle Instant Client (required by the `oracledb` npm package)

---

## Getting Started

### Database Setup

1. Create a schema/user named `GADGETSHOP` in your Oracle PDB:
   ```sql
   CREATE USER GADGETSHOP IDENTIFIED BY 12345;
   GRANT CONNECT, RESOURCE TO GADGETSHOP;
   ```
2. Run your DDL scripts to create all tables (PRODUCT, CUSTOMER, SUPPLIER, ORDERS, CART, etc.) under this user.
3. Ensure the PDB is open and accessible at `localhost:1521/ORCLPDB`.

### Backend Setup

```bash
cd backend
npm install
```

Create a `.env` file in the `backend/` directory (see [Environment Variables](#environment-variables)), then:

```bash
node server.js
# Server listens on http://localhost:8000
```

### Frontend Setup

```bash
cd frontend
npm install
npm start
# App runs on http://localhost:4000
```

---

## Environment Variables

Create `backend/.env`:

```env
# Oracle DB credentials are currently hardcoded in create-and-executedb.js
# Add any additional environment-specific config here
```

> **Note:** The Oracle DB connection string (`user`, `password`, `connectString`) is currently hardcoded in [backend/database/create-and-executedb.js](backend/database/create-and-executedb.js). Move these to `.env` for production use.

---

## Available Scripts

**Backend**

| Command          | Description                  |
|------------------|------------------------------|
| `node server.js` | Start the backend API server |

**Frontend**

| Command       | Description                          |
|---------------|--------------------------------------|
| `npm start`   | Start dev server on port 4000        |
| `npm run build` | Build production bundle            |
| `npm test`    | Run tests                            |

---

## Frontend Routes

| Path                              | Page                        | Access        |
|-----------------------------------|-----------------------------|---------------|
| `/`                               | Home — featured products    | Public        |
| `/product/:id`                    | Product detail + reviews    | Public        |
| `/category/:category`             | Products by category        | Public        |
| `/search/:searchTerm`             | Search results              | Public        |
| `/cart`                           | Shopping cart               | Customer      |
| `/cart/checkout`                  | Checkout                    | Customer      |
| `/signin`                         | Login                       | Public        |
| `/signup`                         | Register                    | Public        |
| `/signout`                        | Logout                      | Authenticated |
| `/customer/my-profile`            | Edit customer profile       | Customer      |
| `/customer/my-orders`             | Customer order history      | Customer      |
| `/supplier/my-products`           | Supplier product list       | Supplier      |
| `/supplier/product-form`          | Add new product             | Supplier      |
| `/supplier/product-form/edit/:id` | Edit existing product       | Supplier      |
| `/supplier/my-orders`             | Orders for supplier's items | Supplier      |

---

## API Overview

All API endpoints are prefixed with `/api/v1`.

See [API_DOCUMENTATION.md](API_DOCUMENTATION.md) for full request/response details.

| Group         | Base Path         | Operations                                   |
|---------------|-------------------|----------------------------------------------|
| Auth          | `/auth`           | Sign up, Sign in                             |
| Products      | `/products`       | CRUD, search, filter, categories, reviews    |
| Customer      | `/customer`       | Get profile, update profile & contacts       |
| Supplier      | `/supplier`       | Get profile, update profile                  |
| Orders        | `/orders`         | Create order, get by customer/supplier, track|
| Cart          | `/cart`           | View cart, add/update/remove items           |

---

## User Roles

| Role     | Description                                                      |
|----------|------------------------------------------------------------------|
| Customer | Shops for products, manages cart, places and tracks orders       |
| Supplier | Lists products for sale, fulfills orders, updates tracking status|
