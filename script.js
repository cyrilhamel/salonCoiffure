function maRedirection(lien) {
    location.href = lien;
}
















/* tornike */
let loading = document.querySelector(".loading");
console.log(loading);
window.addEventListener("load", (event) => {
    loading.classList.remove("active");
});



/* navbar */

let toggleButton = document.getElementsByClassName('toggle-button')[0]
let navbarLinks = document.getElementsByClassName('navbar')[0]

toggleButton.addEventListener('click', () => {
    navbarLinks.classList.toggle('active')
})
