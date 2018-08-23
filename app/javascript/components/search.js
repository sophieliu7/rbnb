function SearchAppear() {
  const search = document.getElementById("search");
  console.log(search);

  //const bloc = "<%= form_tag tools_path, method: :get do %><%= text_field_tag :query, params[:query], class: "form-control", placeholder: "Chercher un outil ou un lieu..."  %>  <% end %>";

  const bloc = "<h1>hello</h1>";

  search.addEventListener("click", (event) => {
    console.log("got the event !")
    const navbar = document.querySelector(".navbar-wagon");
    navbar.insertAdjacentHTML("afterend", bloc);


});

}


export { SearchAppear };
