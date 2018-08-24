function ConfirmInfo() {

  const start_date = document.getElementById("reservation_start_date");
  const duration = document.getElementById("reservation_duration");
  const price = document.getElementById("reservation_price").value;
  console.log(parseInt(price)*45);

  const field_date = document.getElementById("field-date");
  const field_duration = document.getElementById("field-duration");
  const field_endDate = document.getElementById("field-end-date");
  const field_price = document.getElementById("field-price");


  start_date.addEventListener("blur", (event) => {
    const data = start_date.value;
    field_date.innerHTML = ' <i class="fas fa-calendar-alt"></i>  Location à partir du : ' + data;
  });


  duration.addEventListener("keyup", (event) => {
    const data = duration.value;
    const price_total = data * parseInt(price);
    field_duration.innerHTML = '<i class="fas fa-clock"></i> Durée : ' + data + " jours";
    field_price.innerHTML = '<i class="fas fa-money-bill-wave"></i> Montant : ' + price_total + " €";
  });

}


export { ConfirmInfo };
