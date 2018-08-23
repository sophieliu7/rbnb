function showTab() {

  const active_tabs = document.querySelectorAll(".nav-link");
  const list = document.querySelector("ul")

  active_tabs.forEach((tab) => {
    tab.addEventListener("click", (event) => {
      list.insertAdjacentHTML('afterend', "coucou")
    })
  })

}

export { showTab };
