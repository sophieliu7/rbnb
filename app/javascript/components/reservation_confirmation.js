function ConfirmInfo() {
  const start_date = document.getDocumentById("reservation_start_date");
  const duration = document.getDocumentById("reservation_duration");

  console.log(start_date);

  let price = 0;
  let totalPrice = 0;

  start_date.addEventListener("blur", (event) => {
    console.log(start_date)
    price.insertAdjacentHTML("", `${totalPrice}€`);

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
});
}


export { ConfirmInfo };
