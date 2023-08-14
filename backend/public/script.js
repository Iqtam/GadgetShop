const customerInput = document.getElementById("customer-email");
const show = document.getElementById("showcustomer");
async function emailInput() {
  const email = customerInput.value;
  const response = await fetch("/login");
  const data = await response.json();
  show.textContent = data;
}
