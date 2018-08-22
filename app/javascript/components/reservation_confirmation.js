function ConfirmInfo() {
  const start_date = document.querySelector(".date-picker");
  console.log(start_date);
  // const pricePerDay = parseInt(document.querySelector(".price-per-day").innerText);
  // console.log(pricePerDay);
  // let days = 0;
  let price = 0;
  let totalPrice = 0;
  start_date.addEventListener("blur", (event) => {
    console.log(start_date)

  // dates.forEach((date) => {
  //   date.addEventListener("blur", (event) => {
  //
  //     if (endDate.value != "") {
  //
  //       totalPrice = days * pricePerDay;
  //       price.insertAdjacentHTML("beforeend", `${totalPrice}€`);
  //     }
  //   });
  // });
}


export { ConfirmInfo };
