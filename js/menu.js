// $(document).ready(function(){
//     $('#menu-icon').click(function(){
//         $('tab').toggleClass('show')
//     });
// });

function myFunction() {
  const x = document.getElementById("myLinks");
  const body = document.getElementById("Dashboard");
  if (x.style.display === "block") {
    x.style.display = "none";
  } else {
    x.style.display = "block";
    x.style.position = "relative";
  }
}
