// $(document).ready(function(){
//     $('#menu-icon').click(function(){
//         $('tab').toggleClass('show')
//     });
// });


function myFunction() {
  const x = document.getElementById("myLinks");
  const body = document.getElementById("Dasboard");
    if (x.style.display === "block") {
      x.style.display = "none";
      body.style.display = "none";
    } else {
      x.style.display = "block";

    }
  }
  // hide side menu
const element = document.getElementsByClassName("tablinks");

// const hideSideMenu = () => {
//   const x = document.getElementById("myLinks");
//   x.style.display="none";
// }