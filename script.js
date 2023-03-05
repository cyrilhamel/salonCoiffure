function maRedirection(lien) {
    location.href = lien;
}
















/* tornike */
let loading = document.querySelector(".loading");
console.log(loading);
window.addEventListener("load", (event) => {
    loading.classList.remove("active");
});
