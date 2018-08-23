function ConfirmInfo() {
  const start_date = document.getElementById("reservation_start_date");
  const duration = document.getElementById("reservation_duration");

  const field_date = document.getElementById("field-date");
  const field_duration = document.getElementById("field-duration");
  const field_endDate = document.getElementById("field-end-date");
  const field_price = document.getElementById("field-price");


  start_date.addEventListener("blur", (event) => {
    const data = start_date.value;
    field_date.innerHTML = ' <i class="fas fa-calendar-alt"></i>  Location à partir du : ' + data;
  });

  console.log(field_duration);

  field_duration.addEventListener("blur", (event) => {
    // console.log("HHEHHE");
    const data = duration.value;
    console.log(data);
    // const date = start_date.value;
     field_duration.innerText =  data ;
    // field_duration.innerHTML = '<i class="fas fa-clock"></i> Durée : ' + duration + " jours";
    // field_price.innerHTML = '<i class="fas fa-money-bill-wave"></i> Montant' + duration * 90 + " €";
    // field_endDate.innerText = "Fin : " + data_date + data ;
  });




}


export { ConfirmInfo };
