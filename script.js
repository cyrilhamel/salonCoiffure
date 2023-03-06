function maRedirection(lien) {
    location.href = lien;
}


const burger = document.querySelector('.burger');
const menu = document.querySelector('.menu');

burger.addEventListener('click', () => {
  menu.classList.toggle('show');
});














/* tornike */
let loading = document.querySelector(".loading");
console.log(loading);
window.addEventListener("load", (event) => {
    loading.classList.remove("active");
});
