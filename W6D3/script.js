document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });




  // adding SF places as list items
const addItem = (e) => {
  e.preventDefault();

  const ul = document.getElementById("sf-places");
  // const ul = document.getElementById('sf-places');
  const favoriteInput = document.querySelector(".favorite-input");
  // const favoriteInput = document.querySelector(".favorite-input");

    const favorite = favoriteInput.value;
  // const favorite = favoriteInput.value;
  favoriteInput.value= "";
  // favoriteInput.value = "";

  const newLi = document.createElement("li");
  // const newListLi = document.createElement("li");
  newLi.textContent = favorite;
  // newListLi.textContent = favorite;

  // ul.appendChild(newListLi);
  ul.appendChild(newLi);

};

  const placeFormEl = document.querySelector('.photo-url-submit');
  placeFormEl.addEventListener("click", addItem);
  // --- your code here!
const uploadPic = (e) => {
  e.preventDefault();
  
};

  // adding new photos
  const addPic = document.querySelector("photo-show-button");
  addPic.addEventListener("click", uploadPic);

  // --- your code here!



});
