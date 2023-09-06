// libraries
const express = require("express");
const bcrypt = require("bcrypt");
const db_customer = require("../../database/db-customer");
const db_supplier = require("../../database/db-supplier");
// creating router
const router = express.Router({ mergeParams: true });

router.post("/signup", async (req, res) => {
  const { email, password, firstName, lastName, role } = req.body;

  const isCustomerDuplicateEmail = await db_customer.getCustomerEmailValidation(
    email
  );
  const isSupplierDuplicateEmail = await db_supplier.getSupplierEmailValidation(
    email
  );

  if (
    isCustomerDuplicateEmail == "TRUE" ||
    isSupplierDuplicateEmail == "TRUE"
  ) {
    return res.status(400).json({ error: "User Email already exists" });
  } else if (role.toLowerCase() == "customer") {
    //Password hashing and inserting
    const saltRounds = 10;
    try {
      const hashedPassword = await bcrypt.hash(password, saltRounds);
      const customer = await db_customer.createCustomer(
        email,
        hashedPassword,
        firstName,
        lastName
      );
      customer.ROLE = role;
      console.log(customer);
      res
        .status(201)
        .json({ message: "User signed up successfully", user: customer });
    } catch (error) {
      res.status(500).json({ error: "Internal server error" });
    }
  } else if (role.toLowerCase() == "supplier") {
    //Password hashing and inserting
    const saltRounds = 10;
    try {
      const hashedPassword = await bcrypt.hash(password, saltRounds);
      const supplier = await db_supplier.createSupplier(
        email,
        hashedPassword,
        firstName,
        lastName
      );
      supplier.ROLE = role;
      console.log(supplier);
      res
        .status(201)
        .json({ message: "User signed up successfully", user: supplier });
    } catch (error) {
      res.status(500).json({ error: "Internal server error" });
    }
  }
});

router.post("/signin", async (req, res) => {
  const { email, password } = req.body;

  const customer = await db_customer.getCustomerByEmail(email);
  const supplier = await db_supplier.getSupplierByEmail(email);

  if (!customer && !supplier) {
    return res.status(404).json({ error: "User Email not found" });
  } else if (customer) {
    customer.ROLE = "customer";
    try {
      const passwordMatch = await bcrypt.compare(password, customer.PASSWORD);

      if (passwordMatch) {
        // console.log(customer);
        // Passwords match, user is successfully logged in
        return res.status(200).json({
          message: "Login successful",
          user: customer,
        });
      } else {
        // Passwords do not match
        return res.status(401).json({ error: "Password not matched" });
      }
    } catch (error) {
      res.status(500).json({ error: "Internal server error" });
    }
  } else if (supplier) {
    supplier.ROLE = "supplier";
    try {
      const passwordMatch = await bcrypt.compare(password, supplier.PASSWORD);

      if (passwordMatch) {
        // Passwords match, user is successfully logged in
        return res.status(200).json({
          message: "Login successful",
          user: supplier,
        });
      } else {
        // Passwords do not match
        return res.status(401).json({ error: "Invalid credentials" });
      }
    } catch (error) {
      res.status(500).json({ error: "Internal server error" });
    }
  }
});

module.exports = router;
