import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

// flatpickr(".datepicker", {})

const reservationForm = document.getElementById('form-flatpickr');
const reservations = JSON.parse(reservationForm.dataset.reservations);

flatpickr(".datepicker", {
  minDate: "today",
  disable: reservations,
  dateFormat: "Y-m-d"
})
