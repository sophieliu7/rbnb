function ConfirmInfo() {
  const start_date = document.getDocumentById("reservation_start_date");
  const duration = document.getDocumentById("reservation_duration");
  const confirmation = document.getDocumentById("confirmation");

  console.log(start_date);



  start_date.addEventListener("blur", (event) => {
    console.log(start_date)
    confirmation.insertAdjacentHTML("afterbegin", "HELLLO" );

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
